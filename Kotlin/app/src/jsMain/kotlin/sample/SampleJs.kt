package sample

import org.khronos.webgl.WebGLRenderingContext
import org.khronos.webgl.WebGLRenderingContext.Companion.COLOR_BUFFER_BIT
import org.khronos.webgl.WebGLRenderingContext.Companion.TRIANGLES
import kotlin.browser.*
import org.w3c.dom.*

actual class Sample {
    actual fun checkMe() = 12
}

actual object Platform {
    actual val name: String = "JS"
}


@Suppress("unused")
@JsName("helloWorld")
fun helloWorld(salutation: String) {
    val message = "$salutation from Kotlin.JS ${hello()}, check me value: ${Sample().checkMe()}"
    document.getElementById("js-response")?.textContent = message
}

fun main() {
    document.addEventListener("DOMContentLoaded", {
        //helloWorld("Hi!")
        console.log("wanbb");
        val canvas = document.getElementById("myCanvas") as HTMLCanvasElement;
        val gl = canvas.getContext("webgl") as WebGLRenderingContext;
        // Specify the color for clearing <canvas>
        gl.clearColor(0.0f, 1.0f, 0.0f, 1.0f);

        // Clear <canvas>
        gl.clear(COLOR_BUFFER_BIT);

        // Draw the rectangle
        //gl.drawArrays(TRIANGLES, 0, n);
    })

}                