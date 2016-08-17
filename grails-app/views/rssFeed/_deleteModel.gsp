<div class="modal fade" id="delete-modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h3><g:message code="default.model.delete.info" default="Click on Delete Link to Delete"/></h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <g:if test="${urls}">
                            <g:each in="${urls}" var="feedsUrl">
                                <div class="row">
                                    <div class="col-md-10">${feedsUrl.url}</div>

                                    <div class="col-md-2">
                                        <a href="${createLink(controller: "rssFeed", action: "delete",
                                                params: [url: feedsUrl.url])}">Delete</a>
                                    </div>
                                </div>
                            </g:each>
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