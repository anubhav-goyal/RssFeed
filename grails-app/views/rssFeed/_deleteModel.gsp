<div class="modal fade" id="delete-modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>

                <h2>Click on "Delete" link to delete</h2>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <g:if test="${urls}">
                            <g:each in="${urls}" var="feedsUrl">
                                <div class="row">
                                    <div class="col-md-1">${feedsUrl.id}</div>

                                    <div class="col-md-9">${feedsUrl.url}</div>

                                    <div class="col-md-2">
                                        <a href="${createLink(controller: "rssFeed", action: "delete",
                                                params: [url: feedsUrl.url])}">Delete</a>
                                    </div>
                                </div>
                            </g:each>
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