package com.omp.repository.mapper;

import com.omp.repository.domain.FileBoard;

public interface FileBoardMapper {
	public void insertFileBoard(FileBoard file) throws Exception;
	public void modifyFileBoard(FileBoard file) throws Exception;
	public void deleteFileBoard(int no) throws Exception;
	
}
