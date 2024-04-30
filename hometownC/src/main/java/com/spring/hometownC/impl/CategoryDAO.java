package com.spring.hometownC.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("CategoryDAO")
public class CategoryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	

	public CategoryDO getCategory(PostDO pdo) {
		System.out.println("getCategory --> ");
		
		System.out.println(pdo.getCategory());
		String sql = "select * from category where seq =?";
		Object[] args = {pdo.getCategory()};
		return (CategoryDO) jdbcTemplate.queryForObject(sql, args, new CategoryRowMapper());
	}

	public ArrayList<CategoryDO> getCategoryList() {
		System.out.println("getCategoryList --> ");
		
		String sql = "select * from category";
		return (ArrayList<CategoryDO>) jdbcTemplate.query(sql, new CategoryRowMapper());
	}

}

class CategoryRowMapper implements RowMapper<CategoryDO> {

	@Override
	public CategoryDO mapRow(ResultSet rs, int rowNum) throws SQLException {
		System.out.println("CatemapRow() --> ");
		
		CategoryDO cdo = new CategoryDO();
		cdo.setSeq(rs.getInt(1));
		cdo.setCategory(rs.getString(2));
		
		return cdo;
	}
	
}
