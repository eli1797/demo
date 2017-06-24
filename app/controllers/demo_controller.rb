class DemoController < ApplicationController

  layout false
  def index
    #explicit render commands to render a template
    #sets index to use hello template
    render('index')
    #render('hello')
  end

  #action for hello
  def hello
    # @ declares and instance variable
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    #explicit render commands to render a template
    render('hello')
  end

  def other_hello
    #redirect_to(:controller => 'demo', :action => 'index')
    #already in demo controller so no need to call
    redirect_to(:action => 'hello')
  end

  def lynda
    redirect_to('http://lynda.com')
  end
end
