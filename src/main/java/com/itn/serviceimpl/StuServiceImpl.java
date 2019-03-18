/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.serviceimpl;

import com.itn.dao.StudentDao;
import com.itn.model.Student;
import com.itn.service.StudentService;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class StuServiceImpl implements StudentService{
    private static final String UPLOAD_DIR="c:/uploads/";
@Autowired
StudentDao stuDao;

    @Override
    public void addStudent(Student s) {
       stuDao.insert(s);

// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Student> displayStudent() {
        return stuDao.display();
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Student selectStudentById(int id) {
return stuDao.selectById(id);
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void updateStudent(Student s) {
stuDao.update(s);
//throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteStudent(int id) {
stuDao.delete(id);
// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addImage(MultipartFile file) {
       boolean success=false;
       String fileName=file.getOriginalFilename();
       File savePath=new File(UPLOAD_DIR);
       if(!savePath.exists()){
       savePath.mkdir();
       }
       savePath=new File(UPLOAD_DIR + fileName);
        System.out.println(savePath.getAbsolutePath());
       try{
       file.transferTo(savePath);
       success = true;
       }catch(IOException e){
           System.out.println(e);
       }
       return success;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

    @Override
    public boolean updateImage(MultipartFile file, String originalImage) {
      boolean success=false;
      if(deleteImage(originalImage)){
          success=addImage(file);
      }
      return success;
    
 //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteImage(String image) {
        boolean success=false;
        File deleteFile = new File(UPLOAD_DIR+image);
        if(deleteFile.exists()){
        success=deleteFile.delete();
        }
        return success;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
