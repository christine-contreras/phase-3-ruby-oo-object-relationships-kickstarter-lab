class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_backers
        ProjectBacker.all.select{|pb| pb.backer == self}
    end

    def backed_projects
        self.project_backers.map{|pb| pb.project}
    end

end