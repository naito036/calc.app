class CalcsController < ApplicationController
  def show
    val1 = params[:val1].to_i
    calc = params[:calc]
    val2 = params[:val2].to_i

      @result = if calc == "addition"
                  val1 + val2
                elsif calc == "subtraction"
                  val1 - val2
                elsif calc == "multiplication"
                  val1 * val2
                elsif calc == "division"
                  val1 / val2
                else
                  "計算できません"
                end
    
  end
end
