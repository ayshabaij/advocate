class CaseDocsController < ApplicationController
  before_action :set_case_doc, only: [:show, :edit, :update, :destroy]

  # GET /case_docs
  # GET /case_docs.json
  def index
    @case_docs = CaseDoc.all
  end

  # GET /case_docs/1
  # GET /case_docs/1.json
  def show
  end

  # GET /case_docs/new
  def new
    @case_doc = CaseDoc.new
  end

  # GET /case_docs/1/edit
  def edit
  end

  # POST /case_docs
  # POST /case_docs.json
  def create
    @case_doc = CaseDoc.new(case_doc_params)

    respond_to do |format|
      if @case_doc.save
        format.html { redirect_to @case_doc, notice: 'Case doc was successfully created.' }
        format.json { render :show, status: :created, location: @case_doc }
      else
        format.html { render :new }
        format.json { render json: @case_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_docs/1
  # PATCH/PUT /case_docs/1.json
  def update
    respond_to do |format|
      if @case_doc.update(case_doc_params)
        format.html { redirect_to @case_doc, notice: 'Case doc was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_doc }
      else
        format.html { render :edit }
        format.json { render json: @case_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_docs/1
  # DELETE /case_docs/1.json
  def destroy
    @case_doc.destroy
    respond_to do |format|
      format.html { redirect_to case_docs_url, notice: 'Case doc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_doc
      @case_doc = CaseDoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def case_doc_params
      params.require(:case_doc).permit(:document_name)
    end
end
