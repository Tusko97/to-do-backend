class ProjectsController < ApplicationController
    def index
        render json: Project.all, status: :ok
    end

    # GET /projects/{id}
    def show
        # check whether the Project exists
        project = Project.find_by(id:params[:id])

        if project
            # return it
            render json: project, status: :ok
        else
            # throw a not found error
            render json: {error: "Project not found"}, status: :not_found
        end
    end
        
    # POST /projects
    def create
        # get the body of the Project to be created
        project = Project.create(project_params)
    
        # check whether the Project is valid => valid
        if project.valid?
            # add the projects to the db if its valid
            render json: project, status: :accepted
        else
            # throw an unprocessable entity error the user
            render json: {errors: "An error occured. Please try again"}
        end
    end

    # PUT/PATCH /projects/{id}
    def update
        # check whether the Project exists
        project = Project.find_by(id:params[:id])

        if project
            project.update(project_params)
            # return it
            render json: project, status: :accepted
        else
            # throw a not found error
            render json: {error: "Project not found"}, status: :not_found
        end
    end

    # DELETE /projects/{id}
    def destroy
         # check whether the Project exists
         project = Project.find_by(id:params[:id])
        
        #  delete the Project
        if project
            project.destroy
            head :no_content
        #  return a not found Project
        else 
            render json: {error: 'Project not found'}, status: :not_found
        end
    end


end

