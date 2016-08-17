<div class="modal fade" id="choosefeed-modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h3><g:message code="default.model.select.info" default="Select URL for reading feeds"/></h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <g:if test="${urls}">
                            <g:form class="form-horizontal" controller="rssFeed" action="index">
                                <div class="form-group">
                                    <label for="url" class="col-sm-2 control-label">Select</label>

                                    <div class="col-sm-10">
                                        <g:select name="url" from="${urls.url}"
                                                  noSelection="${['all': 'ALL(It will Shows feeds of all your subscriptions)']}"/>
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
                            <g:message code="default.error.messgae.info" default="Sorry Nothing to Display"/>
                        </g:else>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>