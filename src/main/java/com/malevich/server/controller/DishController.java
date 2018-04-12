package com.malevich.server.controller;

import com.malevich.server.entity.Dish;
import com.malevich.server.repository.DishesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sun.security.timestamp.HttpTimestamper;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/menu")
public class DishController {

    @Autowired
    private final DishesRepository dishesRepository;

    @Autowired
    public DishController(DishesRepository dishesRepository) {
        this.dishesRepository = dishesRepository;
    }

    @GetMapping("/")
    public List<Dish> getMenu() {
        return this.dishesRepository.findAll();
    }

    @GetMapping("/{id}/")
    public Optional<Dish> getDishItem(@PathVariable int id) {
        validateDish(id);
        return this.dishesRepository.findById(id);
    }

    @PostMapping("/add")
    public ResponseEntity<?> saveDish(@RequestBody final Dish dish) {
        if (this.dishesRepository.findById(dish.getId()).isPresent()) {
            throw new DishAlreadyExistException(dish.getId());
        }

        this.dishesRepository.save(dish);

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/remove")
    public ResponseEntity<?> removeDish(@RequestBody final Dish dish) {
        validateDish(dish.getId());

        dishesRepository.deleteById(dish.getId());

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/update")
    @Transactional
    public ResponseEntity<?> update(@Valid @RequestBody final Dish dish) {
        validateDish(dish.getId());
        this.dishesRepository.update(
                dish.getId(),
                dish.getPrice(),
                dish.getImageURL(),
                dish.getRating(),
                dish.getDescription()
        );

//        this.dishesRepository.

        return new ResponseEntity<>(HttpStatus.OK);
    }

    private void validateDish(int id) {
        this.dishesRepository.findById(id)
                .orElseThrow(() -> new DishNotFoundException(id));
    }
}

@ResponseStatus(HttpStatus.NOT_FOUND)
class DishNotFoundException extends RuntimeException {

    public DishNotFoundException(int id) {
        super("could not find dish '" + id + "'.");
    }
}

@ResponseStatus(HttpStatus.BAD_REQUEST)
class DishAlreadyExistException extends RuntimeException {

    public DishAlreadyExistException(int id) {
        super("user with login '" + id + "' already exist.");
    }
}