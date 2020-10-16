package sample

import android.opengl.GLES20
import android.opengl.GLSurfaceView
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.view.Gravity
import android.widget.FrameLayout
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10


actual class Sample {
    actual fun checkMe() = 44
}

actual object Platform {
    actual val name: String = "Android"
}

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Sample().checkMe()
        //setContentView(R.layout.activity_main)
        //findViewById<TextView>(R.id.main_text).text = hello()

        val params = FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.FILL_PARENT,
            FrameLayout.LayoutParams.WRAP_CONTENT
        )
        //设置顶部,左边布局
        //设置顶部,左边布局
       // params.gravity = Gravity.TOP or Gravity.LEFT
        val glv = GLSurfaceView(this);
        addContentView(glv,params)
        //val glSurfaceView: SurfaceView = findViewById<GLSurfaceView>(R.id.surfaceView);
        //glSurfaceView.setEGLContextClientVersion(2.0)
        glv.setEGLContextClientVersion(2)
        glv.setRenderer(object : GLSurfaceView.Renderer {
            //val onReadyOnce = Once()

            private fun initializeOnce() {
                //onReadyOnce {
                //    ready()
                //}
            }

            override fun onDrawFrame(gl1: GL10) {
                //println("Android.onDrawFrame")
                initializeOnce()
                //if (DEBUG_AGANDROID) println("Android.onDrawFrame... " + Thread.currentThread())
                //onRender(ag)
                //val gl = gl1 as GLES20;
                GLES20.glClearColor(0.0f, 1.0f, 0.0f, 1.0f);
                GLES20.glClear(0x4000/*GLES20.COLOR_BUFFER_BIT*/);
            }

            override fun onSurfaceChanged(gl1: GL10, width: Int, height: Int) {
                //setViewport(0, 0, width, height)
                initializeOnce()
                //resized()
                //onRender(ag)
            }


            override fun onSurfaceCreated(gl1: GL10, p1: EGLConfig) {
                initializeOnce()
                //gl = gl1 as GLES20
               //onRender(ag)
            }
        })
        glv.renderMode = GLSurfaceView.RENDERMODE_WHEN_DIRTY


    }
}