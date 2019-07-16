module Admin
  class SchedulersController < Fae::BaseController
    def create 
      return create_from_existing(params[:from_existing]) if params[:from_existing].present?

      @item = @klass.new(item_params)

      if @item.save

        SchedulerJob.perform_later @item

        if @item.try(:fae_redirect_to_form_on_create)
          redirect_to send("edit_admin_#{@klass_singular}_path", @item.id), notice: t('fae.save_notice')
        else
          redirect_to @index_path, notice: t('fae.save_notice')
        end
      else
        build_assets
        flash[:alert] = t('fae.save_error')
        render action: 'new'
      end
    end
  end
end
