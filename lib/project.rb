class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_backers
        ProjectBacker.all.select{|pb| pb.project == self}
    end


    def backers
        self.project_backers.map{|project| project.backer}
    end

end
