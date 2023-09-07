package uy.com.calendario.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import uy.com.calendario.model.entities.User;

interface UserRepository extends JpaRepository<User, Long> {

}
