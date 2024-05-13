package sar.practice.kotlin.ui

import javax.swing.JFrame

class Frame {
    init {
        val jFrame = JFrame()
        jFrame.title = "This is my Kotlin Frame"
        jFrame.setSize(1200, 800)
        jFrame.setLocationRelativeTo(null)
        jFrame.isVisible = true
    }
}