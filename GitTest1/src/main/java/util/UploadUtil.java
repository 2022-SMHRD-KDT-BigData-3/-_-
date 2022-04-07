package util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

public class UploadUtil {

	// 폴더를 만들 디렉토리 경로(Window 기반)
    private String savePath;
    private String id;
    private String itemId;
    
	public UploadUtil(String projectPath, String id) {
		super();
		savePath = projectPath+"\\uplodedFiles\\"+id+"\\";
		this.id = id;
	}
	
 
	private void makeBaseDir() {
		
		 File makeFolder = new File(savePath);
		 
		 if(!makeFolder.exists()) {
			 makeFolder.mkdirs();
		 }
		 
	}
	
	public void saveFiles(Part filePart) {
		
		try {
			makeBaseDir();
			String filePath  =  savePath+"\\"+filePart.getSubmittedFileName();
			
			InputStream fis = filePart.getInputStream();
			OutputStream fos = new FileOutputStream(filePath);
			
			byte[] buf = new byte[1024];
			int len = 0;
			
			while((len = fis.read(buf, 0, 1024)) != -1)
				fos.write(buf, 0, len);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public String getImgFiles(){

		String imgFile= "";
		
		File dir = new File(savePath);
		System.out.println("abs : "+dir.getAbsolutePath());
		String[] filenames = dir.list();
		
		for (String filename : filenames) {
			imgFile = String.format("\\GitTest1\\uplodedFiles\\%s\\%s", id, filename); 
			break;
		}

		return imgFile;
	}
	

   
}