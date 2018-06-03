package com.malevich.server.repository;

import com.malevich.server.entity.Session;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;
import java.sql.Time;
import java.util.Optional;

public interface SessionsRepository extends JpaRepository<Session, Integer> {

    Optional<Session> findSessionByUserId(int userId);

    Optional<Session> findSessionBySid(String token);

    Optional<Session> findSessionByUserIdOrSid(int userId, String sid);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "DELETE FROM Session s WHERE s.sid = :sid")
    void delete(@Param("sid") String sid);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "DELETE FROM Session s WHERE s.lastActivity < :last_activity")
    void deleteInActiveSessions(@Param("last_activity") Time lastActivity);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE Session s SET s.user = :user_id, s.loggedIn = :logged_in, " +
            "s.lastActivity = :last_activity WHERE s.sid LIKE :sid")
    int update(
            @Param("user_id") int userId,
            @Param("logged_in") Boolean loggedIn,
            @Param("last_activity") Time lastActivity,
            @Param("sid") String sid);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE Session s SET s.loggedIn = :logged_in, s.lastActivity = :last_activity WHERE s.sid LIKE :sid")
    int update(
            @Param("logged_in") Boolean loggedIn,
            @Param("last_activity") Time lastActivity,
            @Param("sid") String sid);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "UPDATE Session s SET s.lastActivity = :last_activity WHERE s.sid LIKE :sid")
    int update(
            @Param("last_activity") Time lastActivity,
            @Param("sid") String sid);

}