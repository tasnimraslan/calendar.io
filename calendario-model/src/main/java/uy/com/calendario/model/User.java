package uy.com.calendario.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private @Id Long id;
    private int username;
    private String email;
    private String password;

}
