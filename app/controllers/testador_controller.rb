class TestadorController < ApiController
    before_action :authenticate_user!

    def testando
        render plain: "OI"
    end

    def testando2
        render plain: "OI3"
    end

    
    def testando3
        render plain: "OI3"
    end

end
