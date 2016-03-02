/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jspwebproject.entity.dao;

import com.leapfrog.jspwebproject.entity.Department;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public interface DepartmentDAO {
    int insert (Department d) throws ClassNotFoundException,SQLException;
    
}
