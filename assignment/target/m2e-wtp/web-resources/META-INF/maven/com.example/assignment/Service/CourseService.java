package com.example.service;

import com.example.model.Course;
import java.util.List;

public interface CourseService {
    List<Course> getAllCourses();
    boolean enrollStudent(String email, int courseId);
}
