package com.bupt.flowpackage.utils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bupt.flowpackage.common.constants.Constants;
import com.bupt.flowpackage.mybatis.trade.product.model.Product;
/**
 * User: daojian
 * Date: 2017/01/19
 * Time: 15:23
 */
public class Signature {
	public static Logger logger = LoggerFactory.getLogger(Signature.class);
    /**
     * 签名算法
     * @param o 要参与签名的数据对象
     * @return 签名
     * @throws IllegalAccessException
     */
    public static String getSign(Object obj) {
        ArrayList<String> list = new ArrayList<String>();
        Class<? extends Object> cls = obj.getClass();
        Field[] fields = cls.getDeclaredFields();
        for (Field f : fields) {
            f.setAccessible(true);
            if(Modifier.isFinal(f.getModifiers()) || Modifier.isStatic(f.getModifiers())) {
            	continue;
            }
            Object value = null;
			try {
				value = f.get(obj);
			} catch (Exception e) {
				logger.error("Signature.getSign异常:", e);
			}
            if(value == null) {
            	continue;
            }else if(value instanceof String) {
            	if(((String) value).trim().length() > 0) {
            		list.add(f.getName() + "=" + value + "&");
            	}
            }else if(value instanceof Integer) {
            	if((Integer)value != 0) {
            		list.add(f.getName() + "=" + value + "&");
            	}
            }else if(value instanceof Date) {
            	list.add(f.getName() + "=" + RandomUtil.produceRequestNo((Date)value) + "&");
            }else {
            	list.add(f.getName() + "=" + value + "&");
            }
        }
        int size = list.size();
        String[] arrayToSort = list.toArray(new String[size]);
        Arrays.sort(arrayToSort, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb = new StringBuilder();
        for(int i = 0; i < size; i ++) {
            sb.append(arrayToSort[i]);
        }
        String entryStr = sb.toString() + "key=" + Constants.MD5Key;
        String sign = DigestUtils.md5Hex(entryStr).toUpperCase();
        logger.info("\r\nSignature.getSign 加密前str=[{}], 加密后sign=[{}]", entryStr, sign);
        return sign;
    }
    
    public static String MD5(String str) {
    	String sign = null;
    	if(StringUtils.isNoneBlank(str)) {
    		sign = DigestUtils.md5Hex(str + Constants.MD5Key).toUpperCase();
    	}
    	return sign;
    }
    
    public static void main(String[] args) {
		Product p = new Product();
		p.setCreateName("admin");
		p.setFlowType((byte)1);
		p.setFlowValue(10);
		p.setCreateTime(new Date());
		String sign = getSign(p);
		System.out.println(sign);
	}
}
