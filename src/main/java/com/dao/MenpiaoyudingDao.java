package com.dao;

import com.entity.MenpiaoyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.MenpiaoyudingVO;
import com.entity.view.MenpiaoyudingView;


/**
 * 门票预定
 * 
 * @author 
 * @email 
 * @date 2020-10-16 17:06:22
 */
public interface MenpiaoyudingDao extends BaseMapper<MenpiaoyudingEntity> {
	
	List<MenpiaoyudingVO> selectListVO(@Param("ew") Wrapper<MenpiaoyudingEntity> wrapper);
	
	MenpiaoyudingVO selectVO(@Param("ew") Wrapper<MenpiaoyudingEntity> wrapper);
	
	List<MenpiaoyudingView> selectListView(@Param("ew") Wrapper<MenpiaoyudingEntity> wrapper);

	List<MenpiaoyudingView> selectListView(Pagination page,@Param("ew") Wrapper<MenpiaoyudingEntity> wrapper);
	
	MenpiaoyudingView selectView(@Param("ew") Wrapper<MenpiaoyudingEntity> wrapper);
	
}
