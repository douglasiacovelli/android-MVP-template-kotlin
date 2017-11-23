package ${packageName}

import com.worldpackers.travelers.common.BasePresenter

class ${className}Presenter(val contract: ${className}Contract): BasePresenter() {

    init {
        fetchData()
    }

    override fun onClickTryAgain() {
        fetchData()
    }

    override fun onDestroy() {

    }

    private fun fetchData() {
        setLoading(true)
        setTryAgain(false)
    }

}
