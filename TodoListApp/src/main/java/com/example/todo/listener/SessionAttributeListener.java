package com.example.todo.listener;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class SessionAttributeListener implements HttpSessionAttributeListener {

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println("Thêm: " + event.getName() + " - " + event.getValue());
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        System.out.println("Xóa: " + event.getName() + " - " + event.getValue());
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println("Cập nhật: " + event.getName() + " - " + event.getValue());
    }
}
