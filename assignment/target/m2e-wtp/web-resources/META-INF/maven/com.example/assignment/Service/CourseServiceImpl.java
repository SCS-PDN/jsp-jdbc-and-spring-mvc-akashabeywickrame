package com.example.service;

import com.example.model.Course;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    private static final List<Course> COURSES = Arrays.asList(
        new Course(1, "Mathematics"),
        new Course(2, "Physics"),
        new Course(3, "Chemistry")
    );

    @Override
    public List<Course> getAllCourses() {
        return COURSES;
    }

    @Override
    public boolean enrollStudent(String email, int courseId) {
        System.out.println("Enrolling " + email + " in course " + courseId);
        return true; 
    }
}
