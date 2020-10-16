package sample

import kotlinx.wasm.*
import platform.Browser.*

actual class Sample {
    actual fun checkMe() = 13
}

actual object Platform {
    actual val name: String = "wasm"
}

fun main() {
    val canvas = document.getElementById("myCanvas").asCanvas
    val ctx = canvas.getContext("2d")
    print("wasm");
}