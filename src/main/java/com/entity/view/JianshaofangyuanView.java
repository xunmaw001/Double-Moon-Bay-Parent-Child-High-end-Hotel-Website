package com.entity.view;

import com.entity.JianshaofangyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 减少房源
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-10-16 17:06:22
 */
@TableName("jianshaofangyuan")
public class JianshaofangyuanView  extends JianshaofangyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JianshaofangyuanView(){
	}
 
 	public JianshaofangyuanView(JianshaofangyuanEntity jianshaofangyuanEntity){
 	try {
			BeanUtils.copyProperties(this, jianshaofangyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
