class ScopeConfigWrapper
  constructor: (@scope, @configurationVariableNames, @listName) ->

  getList: () ->
    @scope.$eval(@listName)

  getItemsPerPage: () ->
    @scope.$eval(@configurationVariableNames.itemsPerPage) || 10

  getCurrentPage: () ->
    @scope.$eval(@configurationVariableNames.currentPage) || 0

  getMaxPages: () ->
    @scope.$eval(@configurationVariableNames.maxPages) || undefined

  getSortContext: () ->
    @scope.$eval(@configurationVariableNames.sortContext) || 'global'

  setCurrentPage: (currentPage) ->
    @scope.$eval("#{@configurationVariableNames.currentPage}=#{currentPage}")

  getpaginatorLabels: () ->
    paginatorLabelsDefault =
      stepBack: '‹'
      stepAhead: '›'
      jumpBack: '«'
      jumpAhead: '»'
      first: 'First'
      last: 'Last'
    @scope.$eval(@configurationVariableNames.paginatorLabels) || paginatorLabelsDefault
