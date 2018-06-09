package com.malevich.server.repository;

import com.malevich.server.entity.Order;
import com.malevich.server.enums.Status;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

public interface OrdersRepository extends JpaRepository<Order, Integer> {

    List<Order> findAllByTableItemId(int tableItemId);

    List<Order> findAllByDate(String date);

    List<Order> findAllByStatus(Status status);

    List<Order> findAllByStatusNotLike(Status status);

    Optional<Order> findFirstByTableItemIdAndStatusNotLike(int tableId, Status status);

    @Modifying(clearAutomatically = true)
    @Transactional
    @Query(value = "UPDATE orders SET status = :status WHERE id = :id", nativeQuery = true)
    int updateStatus(@Param("id") int id, @Param("status") String status);


    @Transactional
    @Query(value = "SELECT nextval('orders_seq') AS new_id", nativeQuery = true)
    int getNextId();
}
