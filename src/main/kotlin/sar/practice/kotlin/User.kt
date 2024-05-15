package sar.practice.kotlin

import lombok.*
import jakarta.persistence.*

@Builder
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "users")
class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    lateinit var id: Number
}
