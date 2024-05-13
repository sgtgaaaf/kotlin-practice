package sar.practice.kotlin

import lombok.*
import jakarta.persistence.*

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "users")
class User(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Number
)