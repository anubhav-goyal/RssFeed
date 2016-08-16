<div class="modal fade" id="choosefeed-modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h2>Select Your Url for feeds</h2>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <g:if test="${urls}">
                            <g:form class="form-horizontal" controller="rssFeed" action="index">
                                <div class="form-group">
                                    <label for="url" class="col-sm-2 control-label">Select</label>
                                    <div class="col-sm-10">
                                    <g:select name="url" from="${urls.url}" noSelection="${['all':'ALL']}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-default">Show</button>
                                    </div>
                                </div>
                            </g:form>
                        </g:if>
                        <g:else>
                            Sorry nothing to show........
                        </g:else>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>