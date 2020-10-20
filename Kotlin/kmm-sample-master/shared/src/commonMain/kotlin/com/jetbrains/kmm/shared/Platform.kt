package com.jetbrains.kmm.shared

expect class Platform() {
    val platform: String
    fun profile()
}