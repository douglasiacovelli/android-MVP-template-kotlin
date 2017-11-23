package ${packageName}

import android.content.Context
import android.content.Intent
import android.databinding.DataBindingUtil
import android.os.Bundle
import com.worldpackers.travelers.R
import com.worldpackers.travelers.billing.GetMembershipInfo
import com.worldpackers.travelers.common.BaseActivity
import com.worldpackers.travelers.databinding.Activity${className}Binding
import timber.log.Timber

class ${className}Activity : BaseActivity(), ${className}Contract {
    lateinit var dataBinding: Activity${className}Binding
    var presenter: ${className}Presenter? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        dataBinding = DataBindingUtil.setContentView(this, R.layout.${layoutActivityName})
        presenter = ${className}Presenter(this)

        dataBinding.presenter = presenter
        setupToolbar(dataBinding.toolbar, ${showTitle?c})
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
