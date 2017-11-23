package ${packageName}

import android.content.Context
import android.content.Intent
import android.databinding.DataBindingUtil
import android.os.Bundle
import android.support.v7.app.AppCompatActivity;

class ${className}Activity : AppCompatActivity(), ${className}Contract {
    lateinit var dataBinding: Activity${className}Binding
    var presenter: ${className}Presenter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        dataBinding = DataBindingUtil.setContentView(this, R.layout.${layoutActivityName})
        presenter = ${className}Presenter(this)

        dataBinding.presenter = presenter
    }

    override fun onDestroy() {
        super.onDestroy()
        presenter?.onDestroy()
    }

    companion object {
        @JvmStatic fun buildIntent(context: Context): Intent {
            val intent = Intent(context, ${className}Activity::class.java)
            return intent
        }
    }
}
