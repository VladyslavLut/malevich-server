package com.malevich.server.controller.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class EntityAlreadyExistException extends RuntimeException {
    public EntityAlreadyExistException(Object entity, int id) {
        super(entity.getClass() + "dish with id '" + id + "' already exist.");
    }

    public EntityAlreadyExistException(Object entity, String login) {
        super(entity.getClass() + "dish with login '" + login + "' already exist.");
    }
}