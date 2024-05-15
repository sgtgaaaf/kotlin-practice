package sar.practice.kotlin.ui

import sar.practice.kotlin.User
import javax.swing.JFrame
import javax.swing.JLabel

class Frame {
    init {
        val user = User()
        user.id = 5
        val label = JLabel(user.id.toString())
        val jFrame = JFrame()
        jFrame.add(label)
        jFrame.title = "This is my Kotlin Frame"
        jFrame.setSize(1200, 800)
        jFrame.setLocationRelativeTo(null)
        jFrame.isVisible = true
    }
}