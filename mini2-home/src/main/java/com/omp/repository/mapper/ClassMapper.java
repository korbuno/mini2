package com.omp.repository.mapper;

import java.util.List;

import com.omp.repository.domain.Class;
import com.omp.repository.domain.ClassBoard;

public interface ClassMapper {
	public List<Class> classList() throws Exception;
	public void insertClass(Class study, ClassBoard board) throws Exception;
	public void deleteClass(int no) throws Exception;
	public Class modifyForm(int no) throws Exception;
	public void modify(Class study) throws Exception;
	public Class detail(int no) throws Exception;
}
