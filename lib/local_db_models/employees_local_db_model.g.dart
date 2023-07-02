// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_local_db_model.dart';

// **************************************************************************
// SqfEntityGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names

//  These classes was generated by SqfEntity
//  Copyright (c) 2019, All rights reserved. Use of this source code is governed by a
//  Apache license that can be found in the LICENSE file.

//  To use these SqfEntity classes do following:
//  - import model.dart into where to use
//  - start typing ex:Employee.select()... (add a few filters with fluent methods)...(add orderBy/orderBydesc if you want)...
//  - and then just put end of filters / or end of only select()  toSingle() / or toList()
//  - you can select one or return List<yourObject> by your filters and orders
//  - also you can batch update or batch delete by using delete/update methods instead of tosingle/tolist methods
//    Enjoy.. Huseyin Tokpunar

// BEGIN TABLES
// Employee TABLE
class TableEmployee extends SqfEntityTableBase {
  TableEmployee() {
    // declare properties of EntityTable
    tableName = 'employees';
    primaryKeyName = 'id';
    primaryKeyType = PrimaryKeyType.integer_auto_incremental;
    useSoftDeleting = true;
    // when useSoftDeleting is true, creates a field named 'isDeleted' on the table, and set to '1' this field when item deleted (does not hard delete)

    // declare fields
    fields = [
      SqfEntityFieldBase('name', DbType.text),
      SqfEntityFieldBase('designation', DbType.text),
      SqfEntityFieldBase('fromPeriod', DbType.datetimeUtc,
          minValue: DateTime.parse('1900-01-01')),
      SqfEntityFieldBase('toPeriod', DbType.datetimeUtc,
          minValue: DateTime.parse('1900-01-01')),
    ];
    super.init();
  }
  static SqfEntityTableBase? _instance;
  static SqfEntityTableBase get getInstance {
    return _instance = _instance ?? TableEmployee();
  }
}
// END TABLES

// BEGIN SEQUENCES
// identity SEQUENCE
class SequenceIdentitySequence extends SqfEntitySequenceBase {
  SequenceIdentitySequence() {
    sequenceName = 'identity';
    maxValue =
        9007199254740991; /* optional. default is max int (9.223.372.036.854.775.807) */
    cycle = false; /* optional. default is false; */
    minValue = 0; /* optional. default is 0 */
    incrementBy = 1; /* optional. default is 1 */
    startWith = 0; /* optional. default is 0 */
    super.init();
  }
  static SequenceIdentitySequence? _instance;
  static SequenceIdentitySequence get getInstance {
    return _instance = _instance ?? SequenceIdentitySequence();
  }
}
// END SEQUENCES

// BEGIN DATABASE MODEL
class EmployeesModel extends SqfEntityModelProvider {
  EmployeesModel() {
    databaseName = employeesModel.databaseName;
    password = employeesModel.password;
    dbVersion = employeesModel.dbVersion;
    preSaveAction = employeesModel.preSaveAction;
    logFunction = employeesModel.logFunction;
    databaseTables = [
      TableEmployee.getInstance,
    ];

    sequences = [
      SequenceIdentitySequence.getInstance,
    ];

    bundledDatabasePath = employeesModel
        .bundledDatabasePath; //'assets/sample.db'; // This value is optional. When bundledDatabasePath is empty then EntityBase creats a new database when initializing the database
    databasePath = employeesModel.databasePath;
  }
  Map<String, dynamic> getControllers() {
    final controllers = <String, dynamic>{};

    return controllers;
  }
}
// END DATABASE MODEL

// BEGIN ENTITIES
// region Employee
class Employee extends TableBase {
  Employee(
      {this.id,
      this.name,
      this.designation,
      this.fromPeriod,
      this.toPeriod,
      this.isDeleted}) {
    _setDefaultValues();
    softDeleteActivated = true;
  }
  Employee.withFields(this.name, this.designation, this.fromPeriod,
      this.toPeriod, this.isDeleted) {
    _setDefaultValues();
  }
  Employee.withId(this.id, this.name, this.designation, this.fromPeriod,
      this.toPeriod, this.isDeleted) {
    _setDefaultValues();
  }
  // fromMap v2.0
  Employee.fromMap(Map<String, dynamic> o, {bool setDefaultValues = true}) {
    if (setDefaultValues) {
      _setDefaultValues();
    }
    id = int.tryParse(o['id'].toString());
    if (o['name'] != null) {
      name = o['name'].toString();
    }
    if (o['designation'] != null) {
      designation = o['designation'].toString();
    }
    if (o['fromPeriod'] != null) {
      fromPeriod = int.tryParse(o['fromPeriod'].toString()) != null
          ? DateTime.fromMillisecondsSinceEpoch(
              int.tryParse(o['fromPeriod'].toString())!,
              isUtc: true)
          : DateTime.tryParse(o['fromPeriod'].toString());
    }
    if (o['toPeriod'] != null) {
      toPeriod = int.tryParse(o['toPeriod'].toString()) != null
          ? DateTime.fromMillisecondsSinceEpoch(
              int.tryParse(o['toPeriod'].toString())!,
              isUtc: true)
          : DateTime.tryParse(o['toPeriod'].toString());
    }
    isDeleted = o['isDeleted'] != null
        ? o['isDeleted'] == 1 || o['isDeleted'] == true
        : null;
  }
  // FIELDS (Employee)
  int? id;
  String? name;
  String? designation;
  DateTime? fromPeriod;
  DateTime? toPeriod;
  bool? isDeleted;

  // end FIELDS (Employee)

  static const bool _softDeleteActivated = true;
  EmployeeManager? __mnEmployee;

  EmployeeManager get _mnEmployee {
    return __mnEmployee = __mnEmployee ?? EmployeeManager();
  }

  // METHODS
  @override
  Map<String, dynamic> toMap(
      {bool forQuery = false, bool forJson = false, bool forView = false}) {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (name != null || !forView) {
      map['name'] = name;
    }
    if (designation != null || !forView) {
      map['designation'] = designation;
    }
    if (fromPeriod != null) {
      map['fromPeriod'] = forJson
          ? fromPeriod!.toUtc().toString()
          : forQuery
              ? fromPeriod!.millisecondsSinceEpoch
              : fromPeriod;
    } else if (fromPeriod != null || !forView) {
      map['fromPeriod'] = null;
    }
    if (toPeriod != null) {
      map['toPeriod'] = forJson
          ? toPeriod!.toUtc().toString()
          : forQuery
              ? toPeriod!.millisecondsSinceEpoch
              : toPeriod;
    } else if (toPeriod != null || !forView) {
      map['toPeriod'] = null;
    }
    if (isDeleted != null) {
      map['isDeleted'] = forQuery ? (isDeleted! ? 1 : 0) : isDeleted;
    }

    return map;
  }

  @override
  Future<Map<String, dynamic>> toMapWithChildren(
      [bool forQuery = false,
      bool forJson = false,
      bool forView = false]) async {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (name != null || !forView) {
      map['name'] = name;
    }
    if (designation != null || !forView) {
      map['designation'] = designation;
    }
    if (fromPeriod != null) {
      map['fromPeriod'] = forJson
          ? fromPeriod!.toUtc().toString()
          : forQuery
              ? fromPeriod!.millisecondsSinceEpoch
              : fromPeriod;
    } else if (fromPeriod != null || !forView) {
      map['fromPeriod'] = null;
    }
    if (toPeriod != null) {
      map['toPeriod'] = forJson
          ? toPeriod!.toUtc().toString()
          : forQuery
              ? toPeriod!.millisecondsSinceEpoch
              : toPeriod;
    } else if (toPeriod != null || !forView) {
      map['toPeriod'] = null;
    }
    if (isDeleted != null) {
      map['isDeleted'] = forQuery ? (isDeleted! ? 1 : 0) : isDeleted;
    }

    return map;
  }

  /// This method returns Json String [Employee]
  @override
  String toJson() {
    return json.encode(toMap(forJson: true));
  }

  /// This method returns Json String [Employee]
  @override
  Future<String> toJsonWithChilds() async {
    return json.encode(await toMapWithChildren(false, true));
  }

  @override
  List<dynamic> toArgs() {
    return [
      name,
      designation,
      fromPeriod != null ? fromPeriod!.millisecondsSinceEpoch : null,
      toPeriod != null ? toPeriod!.millisecondsSinceEpoch : null,
      isDeleted
    ];
  }

  @override
  List<dynamic> toArgsWithIds() {
    return [
      id,
      name,
      designation,
      fromPeriod != null ? fromPeriod!.millisecondsSinceEpoch : null,
      toPeriod != null ? toPeriod!.millisecondsSinceEpoch : null,
      isDeleted
    ];
  }

  static Future<List<Employee>> fromJson(String jsonBody) async {
    final Iterable list = await json.decode(jsonBody) as Iterable;
    var objList = <Employee>[];
    try {
      objList = list
          .map((employee) => Employee.fromMap(employee as Map<String, dynamic>))
          .toList();
    } catch (e) {
      debugPrint(
          'SQFENTITY ERROR Employee.fromJson: ErrorMessage: ${e.toString()}');
    }
    return objList;
  }

  static Future<List<Employee>> fromMapList(List<dynamic> data,
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields,
      bool setDefaultValues = true}) async {
    final List<Employee> objList = <Employee>[];
    loadedFields = loadedFields ?? [];
    for (final map in data) {
      final obj = Employee.fromMap(map as Map<String, dynamic>,
          setDefaultValues: setDefaultValues);

      objList.add(obj);
    }
    return objList;
  }

  /// returns Employee by ID if exist, otherwise returns null
  /// Primary Keys: int? id
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: getById(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: getById(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns>returns [Employee] if exist, otherwise returns null
  Future<Employee?> getById(int? id,
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    if (id == null) {
      return null;
    }
    Employee? obj;
    final data = await _mnEmployee.getById([id]);
    if (data.length != 0) {
      obj = Employee.fromMap(data[0] as Map<String, dynamic>);
    } else {
      obj = null;
    }
    return obj;
  }

  /// Saves the (Employee) object. If the id field is null, saves as a new record and returns new id, if id is not null then updates record
  /// ignoreBatch = true as a default. Set ignoreBatch to false if you run more than one save() operation those are between batchStart and batchCommit
  /// <returns>Returns id
  @override
  Future<int?> save({bool ignoreBatch = true}) async {
    if (id == null || id == 0) {
      id = await _mnEmployee.insert(this, ignoreBatch);
    } else {
      await _mnEmployee.update(this);
    }

    return id;
  }

  /// Saves the (Employee) object. If the id field is null, saves as a new record and returns new id, if id is not null then updates record
  /// ignoreBatch = true as a default. Set ignoreBatch to false if you run more than one save() operation those are between batchStart and batchCommit
  /// <returns>Returns id
  @override
  Future<int?> saveOrThrow({bool ignoreBatch = true}) async {
    if (id == null || id == 0) {
      id = await _mnEmployee.insertOrThrow(this, ignoreBatch);

      isInsert = true;
    } else {
      // id= await _upsert(); // removed in sqfentity_gen 1.3.0+6
      await _mnEmployee.updateOrThrow(this);
    }

    return id;
  }

  /// saveAs Employee. Returns a new Primary Key value of Employee

  /// <returns>Returns a new Primary Key value of Employee
  @override
  Future<int?> saveAs({bool ignoreBatch = true}) async {
    id = null;

    return save(ignoreBatch: ignoreBatch);
  }

  /// saveAll method saves the sent List<Employee> as a bulk in one transaction
  /// Returns a <List<BoolResult>>
  static Future<List<dynamic>> saveAll(List<Employee> employees,
      {bool? exclusive, bool? noResult, bool? continueOnError}) async {
    List<dynamic>? result = [];
    // If there is no open transaction, start one
    final isStartedBatch = await EmployeesModel().batchStart();
    for (final obj in employees) {
      await obj.save(ignoreBatch: false);
    }
    if (!isStartedBatch) {
      result = await EmployeesModel().batchCommit(
          exclusive: exclusive,
          noResult: noResult,
          continueOnError: continueOnError);
      for (int i = 0; i < employees.length; i++) {
        if (employees[i].id == null) {
          employees[i].id = result![i] as int;
        }
      }
    }
    return result!;
  }

  /// Updates if the record exists, otherwise adds a new row
  /// <returns>Returns id
  @override
  Future<int?> upsert({bool ignoreBatch = true}) async {
    try {
      final result = await _mnEmployee.rawInsert(
          'INSERT OR REPLACE INTO employees (id, name, designation, fromPeriod, toPeriod,isDeleted)  VALUES (?,?,?,?,?,?)',
          [
            id,
            name,
            designation,
            fromPeriod != null ? fromPeriod!.millisecondsSinceEpoch : null,
            toPeriod != null ? toPeriod!.millisecondsSinceEpoch : null,
            isDeleted
          ],
          ignoreBatch);
      if (result! > 0) {
        saveResult = BoolResult(
            success: true,
            successMessage: 'Employee id=$id updated successfully');
      } else {
        saveResult = BoolResult(
            success: false, errorMessage: 'Employee id=$id did not update');
      }
      return id;
    } catch (e) {
      saveResult = BoolResult(
          success: false,
          errorMessage: 'Employee Save failed. Error: ${e.toString()}');
      return null;
    }
  }

  /// inserts or replaces the sent List<<Employee>> as a bulk in one transaction.
  /// upsertAll() method is faster then saveAll() method. upsertAll() should be used when you are sure that the primary key is greater than zero
  /// Returns a BoolCommitResult
  @override
  Future<BoolCommitResult> upsertAll(List<Employee> employees,
      {bool? exclusive, bool? noResult, bool? continueOnError}) async {
    final results = await _mnEmployee.rawInsertAll(
        'INSERT OR REPLACE INTO employees (id, name, designation, fromPeriod, toPeriod,isDeleted)  VALUES (?,?,?,?,?,?)',
        employees,
        exclusive: exclusive,
        noResult: noResult,
        continueOnError: continueOnError);
    return results;
  }

  /// Deletes Employee

  /// <returns>BoolResult res.success= true (Deleted), false (Could not be deleted)
  @override
  Future<BoolResult> delete([bool hardDelete = false]) async {
    debugPrint('SQFENTITIY: delete Employee invoked (id=$id)');
    if (!_softDeleteActivated || hardDelete || isDeleted!) {
      return _mnEmployee
          .delete(QueryParams(whereString: 'id=?', whereArguments: [id]));
    } else {
      return _mnEmployee.updateBatch(
          QueryParams(whereString: 'id=?', whereArguments: [id]),
          {'isDeleted': 1});
    }
  }

  /// Recover Employee

  /// <returns>BoolResult res.success=Recovered, not res.success=Can not recovered
  @override
  Future<BoolResult> recover([bool recoverChilds = true]) async {
    debugPrint('SQFENTITIY: recover Employee invoked (id=$id)');
    {
      return _mnEmployee.updateBatch(
          QueryParams(whereString: 'id=?', whereArguments: [id]),
          {'isDeleted': 0});
    }
  }

  @override
  EmployeeFilterBuilder select(
      {List<String>? columnsToSelect, bool? getIsDeleted}) {
    return EmployeeFilterBuilder(this, getIsDeleted)
      ..qparams.selectColumns = columnsToSelect;
  }

  @override
  EmployeeFilterBuilder distinct(
      {List<String>? columnsToSelect, bool? getIsDeleted}) {
    return EmployeeFilterBuilder(this, getIsDeleted)
      ..qparams.selectColumns = columnsToSelect
      ..qparams.distinct = true;
  }

  void _setDefaultValues() {
    isDeleted = isDeleted ?? false;
  }

  @override
  void rollbackPk() {
    if (isInsert == true) {
      id = null;
    }
  }

// END METHODS
// BEGIN CUSTOM CODE
/*
      you can define customCode property of your SqfEntityTable constant. For example:
      const tablePerson = SqfEntityTable(
      tableName: 'person',
      primaryKeyName: 'id',
      primaryKeyType: PrimaryKeyType.integer_auto_incremental,
      fields: [
        SqfEntityField('firstName', DbType.text),
        SqfEntityField('lastName', DbType.text),
      ],
      customCode: '''
       String fullName()
       {
         return '$firstName $lastName';
       }
      ''');
     */
// END CUSTOM CODE
}
// endregion employee

// region EmployeeField
class EmployeeField extends FilterBase {
  EmployeeField(EmployeeFilterBuilder employeeFB) : super(employeeFB);

  @override
  EmployeeFilterBuilder equals(dynamic pValue) {
    return super.equals(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder equalsOrNull(dynamic pValue) {
    return super.equalsOrNull(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder isNull() {
    return super.isNull() as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder contains(dynamic pValue) {
    return super.contains(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder startsWith(dynamic pValue) {
    return super.startsWith(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder endsWith(dynamic pValue) {
    return super.endsWith(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder between(dynamic pFirst, dynamic pLast) {
    return super.between(pFirst, pLast) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder greaterThan(dynamic pValue) {
    return super.greaterThan(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder lessThan(dynamic pValue) {
    return super.lessThan(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder greaterThanOrEquals(dynamic pValue) {
    return super.greaterThanOrEquals(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder lessThanOrEquals(dynamic pValue) {
    return super.lessThanOrEquals(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeFilterBuilder inValues(dynamic pValue) {
    return super.inValues(pValue) as EmployeeFilterBuilder;
  }

  @override
  EmployeeField get not {
    return super.not as EmployeeField;
  }
}
// endregion EmployeeField

// region EmployeeFilterBuilder
class EmployeeFilterBuilder extends ConjunctionBase {
  EmployeeFilterBuilder(Employee obj, bool? getIsDeleted)
      : super(obj, getIsDeleted) {
    _mnEmployee = obj._mnEmployee;
    _softDeleteActivated = obj.softDeleteActivated;
  }

  bool _softDeleteActivated = false;
  EmployeeManager? _mnEmployee;

  /// put the sql keyword 'AND'
  @override
  EmployeeFilterBuilder get and {
    super.and;
    return this;
  }

  /// put the sql keyword 'OR'
  @override
  EmployeeFilterBuilder get or {
    super.or;
    return this;
  }

  /// open parentheses
  @override
  EmployeeFilterBuilder get startBlock {
    super.startBlock;
    return this;
  }

  /// String whereCriteria, write raw query without 'where' keyword. Like this: 'field1 like 'test%' and field2 = 3'
  @override
  EmployeeFilterBuilder where(String? whereCriteria, {dynamic parameterValue}) {
    super.where(whereCriteria, parameterValue: parameterValue);
    return this;
  }

  /// page = page number,
  /// pagesize = row(s) per page
  @override
  EmployeeFilterBuilder page(int page, int pagesize) {
    super.page(page, pagesize);
    return this;
  }

  /// int count = LIMIT
  @override
  EmployeeFilterBuilder top(int count) {
    super.top(count);
    return this;
  }

  /// close parentheses
  @override
  EmployeeFilterBuilder get endBlock {
    super.endBlock;
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='name, date'
  /// Example 2: argFields = ['name', 'date']
  @override
  EmployeeFilterBuilder orderBy(dynamic argFields) {
    super.orderBy(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='field1, field2'
  /// Example 2: argFields = ['field1', 'field2']
  @override
  EmployeeFilterBuilder orderByDesc(dynamic argFields) {
    super.orderByDesc(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='field1, field2'
  /// Example 2: argFields = ['field1', 'field2']
  @override
  EmployeeFilterBuilder groupBy(dynamic argFields) {
    super.groupBy(argFields);
    return this;
  }

  /// argFields might be String or List<String>.
  /// Example 1: argFields='name, date'
  /// Example 2: argFields = ['name', 'date']
  @override
  EmployeeFilterBuilder having(dynamic argFields) {
    super.having(argFields);
    return this;
  }

  EmployeeField _setField(EmployeeField? field, String colName, DbType dbtype) {
    return EmployeeField(this)
      ..param = DbParameter(
          dbType: dbtype, columnName: colName, wStartBlock: openedBlock);
  }

  EmployeeField? _id;
  EmployeeField get id {
    return _id = _setField(_id, 'id', DbType.integer);
  }

  EmployeeField? _name;
  EmployeeField get name {
    return _name = _setField(_name, 'name', DbType.text);
  }

  EmployeeField? _designation;
  EmployeeField get designation {
    return _designation = _setField(_designation, 'designation', DbType.text);
  }

  EmployeeField? _fromPeriod;
  EmployeeField get fromPeriod {
    return _fromPeriod =
        _setField(_fromPeriod, 'fromPeriod', DbType.datetimeUtc);
  }

  EmployeeField? _toPeriod;
  EmployeeField get toPeriod {
    return _toPeriod = _setField(_toPeriod, 'toPeriod', DbType.datetimeUtc);
  }

  EmployeeField? _isDeleted;
  EmployeeField get isDeleted {
    return _isDeleted = _setField(_isDeleted, 'isDeleted', DbType.bool);
  }

  /// Deletes List<Employee> bulk by query
  ///
  /// <returns>BoolResult res.success= true (Deleted), false (Could not be deleted)
  @override
  Future<BoolResult> delete([bool hardDelete = false]) async {
    buildParameters();
    var r = BoolResult(success: false);

    if (_softDeleteActivated && !hardDelete) {
      r = await _mnEmployee!.updateBatch(qparams, {'isDeleted': 1});
    } else {
      r = await _mnEmployee!.delete(qparams);
    }
    return r;
  }

  /// Recover List<Employee> bulk by query
  @override
  Future<BoolResult> recover() async {
    buildParameters(getIsDeleted: true);
    debugPrint('SQFENTITIY: recover Employee bulk invoked');
    return _mnEmployee!.updateBatch(qparams, {'isDeleted': 0});
  }

  /// using:
  /// update({'fieldName': Value})
  /// fieldName must be String. Value is dynamic, it can be any of the (int, bool, String.. )
  @override
  Future<BoolResult> update(Map<String, dynamic> values) {
    buildParameters();
    if (qparams.limit! > 0 || qparams.offset! > 0) {
      qparams.whereString =
          'id IN (SELECT id from employees ${qparams.whereString!.isNotEmpty ? 'WHERE ${qparams.whereString}' : ''}${qparams.limit! > 0 ? ' LIMIT ${qparams.limit}' : ''}${qparams.offset! > 0 ? ' OFFSET ${qparams.offset}' : ''})';
    }
    return _mnEmployee!.updateBatch(qparams, values);
  }

  /// This method always returns [Employee] Obj if exist, otherwise returns null
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toSingle(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toSingle(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns> Employee?
  @override
  Future<Employee?> toSingle(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    buildParameters(pSize: 1);
    final objFuture = _mnEmployee!.toList(qparams);
    final data = await objFuture;
    Employee? obj;
    if (data.isNotEmpty) {
      obj = Employee.fromMap(data[0] as Map<String, dynamic>);
    } else {
      obj = null;
    }
    return obj;
  }

  /// This method always returns [Employee]
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toSingle(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toSingle(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns> Employee?
  @override
  Future<Employee> toSingleOrDefault(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    return await toSingle(
            preload: preload,
            preloadFields: preloadFields,
            loadParents: loadParents,
            loadedFields: loadedFields) ??
        Employee();
  }

  /// This method returns int. [Employee]
  /// <returns>int
  @override
  Future<int> toCount([VoidCallback Function(int c)? employeeCount]) async {
    buildParameters();
    qparams.selectColumns = ['COUNT(1) AS CNT'];
    final employeesFuture = await _mnEmployee!.toList(qparams);
    final int count = employeesFuture[0]['CNT'] as int;
    if (employeeCount != null) {
      employeeCount(count);
    }
    return count;
  }

  /// This method returns List<Employee> [Employee]
  /// bool preload: if true, loads all related child objects (Set preload to true if you want to load all fields related to child or parent)
  /// ex: toList(preload:true) -> Loads all related objects
  /// List<String> preloadFields: specify the fields you want to preload (preload parameter's value should also be "true")
  /// ex: toList(preload:true, preloadFields:['plField1','plField2'... etc])  -> Loads only certain fields what you specified
  /// bool loadParents: if true, loads all parent objects until the object has no parent

  /// <returns>List<Employee>
  @override
  Future<List<Employee>> toList(
      {bool preload = false,
      List<String>? preloadFields,
      bool loadParents = false,
      List<String>? loadedFields}) async {
    final data = await toMapList();
    final List<Employee> employeesData = await Employee.fromMapList(data,
        preload: preload,
        preloadFields: preloadFields,
        loadParents: loadParents,
        loadedFields: loadedFields,
        setDefaultValues: qparams.selectColumns == null);
    return employeesData;
  }

  /// This method returns Json String [Employee]
  @override
  Future<String> toJson() async {
    final list = <dynamic>[];
    final data = await toList();
    for (var o in data) {
      list.add(o.toMap(forJson: true));
    }
    return json.encode(list);
  }

  /// This method returns Json String. [Employee]
  @override
  Future<String> toJsonWithChilds() async {
    final list = <dynamic>[];
    final data = await toList();
    for (var o in data) {
      list.add(await o.toMapWithChildren(false, true));
    }
    return json.encode(list);
  }

  /// This method returns List<dynamic>. [Employee]
  /// <returns>List<dynamic>
  @override
  Future<List<dynamic>> toMapList() async {
    buildParameters();
    return await _mnEmployee!.toList(qparams);
  }

  /// This method returns Primary Key List SQL and Parameters retVal = Map<String,dynamic>. [Employee]
  /// retVal['sql'] = SQL statement string, retVal['args'] = whereArguments List<dynamic>;
  /// <returns>List<String>
  @override
  Map<String, dynamic> toListPrimaryKeySQL([bool buildParams = true]) {
    final Map<String, dynamic> _retVal = <String, dynamic>{};
    if (buildParams) {
      buildParameters();
    }
    _retVal['sql'] = 'SELECT `id` FROM employees WHERE ${qparams.whereString}';
    _retVal['args'] = qparams.whereArguments;
    return _retVal;
  }

  /// This method returns Primary Key List<int>.
  /// <returns>List<int>
  @override
  Future<List<int>> toListPrimaryKey([bool buildParams = true]) async {
    if (buildParams) {
      buildParameters();
    }
    final List<int> idData = <int>[];
    qparams.selectColumns = ['id'];
    final idFuture = await _mnEmployee!.toList(qparams);

    final int count = idFuture.length;
    for (int i = 0; i < count; i++) {
      idData.add(idFuture[i]['id'] as int);
    }
    return idData;
  }

  /// Returns List<dynamic> for selected columns. Use this method for 'groupBy' with min,max,avg..  [Employee]
  /// Sample usage: (see EXAMPLE 4.2 at https://github.com/hhtokpinar/sqfEntity#group-by)
  @override
  Future<List<dynamic>> toListObject() async {
    buildParameters();

    final objectFuture = _mnEmployee!.toList(qparams);

    final List<dynamic> objectsData = <dynamic>[];
    final data = await objectFuture;
    final int count = data.length;
    for (int i = 0; i < count; i++) {
      objectsData.add(data[i]);
    }
    return objectsData;
  }

  /// Returns List<String> for selected first column
  /// Sample usage: await Employee.select(columnsToSelect: ['columnName']).toListString()
  @override
  Future<List<String>> toListString(
      [VoidCallback Function(List<String> o)? listString]) async {
    buildParameters();

    final objectFuture = _mnEmployee!.toList(qparams);

    final List<String> objectsData = <String>[];
    final data = await objectFuture;
    final int count = data.length;
    for (int i = 0; i < count; i++) {
      objectsData.add(data[i][qparams.selectColumns![0]].toString());
    }
    if (listString != null) {
      listString(objectsData);
    }
    return objectsData;
  }
}
// endregion EmployeeFilterBuilder

// region EmployeeFields
class EmployeeFields {
  static TableField? _fId;
  static TableField get id {
    return _fId = _fId ?? SqlSyntax.setField(_fId, 'id', DbType.integer);
  }

  static TableField? _fName;
  static TableField get name {
    return _fName = _fName ?? SqlSyntax.setField(_fName, 'name', DbType.text);
  }

  static TableField? _fDesignation;
  static TableField get designation {
    return _fDesignation = _fDesignation ??
        SqlSyntax.setField(_fDesignation, 'designation', DbType.text);
  }

  static TableField? _fFromPeriod;
  static TableField get fromPeriod {
    return _fFromPeriod = _fFromPeriod ??
        SqlSyntax.setField(_fFromPeriod, 'fromPeriod', DbType.datetimeUtc);
  }

  static TableField? _fToPeriod;
  static TableField get toPeriod {
    return _fToPeriod = _fToPeriod ??
        SqlSyntax.setField(_fToPeriod, 'toPeriod', DbType.datetimeUtc);
  }

  static TableField? _fIsDeleted;
  static TableField get isDeleted {
    return _fIsDeleted = _fIsDeleted ??
        SqlSyntax.setField(_fIsDeleted, 'isDeleted', DbType.integer);
  }
}
// endregion EmployeeFields

//region EmployeeManager
class EmployeeManager extends SqfEntityProvider {
  EmployeeManager()
      : super(EmployeesModel(),
            tableName: _tableName,
            primaryKeyList: _primaryKeyList,
            whereStr: _whereStr);
  static const String _tableName = 'employees';
  static const List<String> _primaryKeyList = ['id'];
  static const String _whereStr = 'id=?';
}

//endregion EmployeeManager
/// Region SEQUENCE IdentitySequence
class IdentitySequence {
  /// Assigns a new value when it is triggered and returns the new value
  /// returns Future<int>
  Future<int> nextVal([VoidCallback Function(int o)? nextval]) async {
    final val = await EmployeesModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, true);
    if (nextval != null) {
      nextval(val);
    }
    return val;
  }

  /// Get the current value
  /// returns Future<int>
  Future<int> currentVal([VoidCallback Function(int o)? currentval]) async {
    final val = await EmployeesModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, false);
    if (currentval != null) {
      currentval(val);
    }
    return val;
  }

  /// Reset sequence to start value
  /// returns start value
  Future<int> reset([VoidCallback Function(int o)? currentval]) async {
    final val = await EmployeesModelSequenceManager()
        .sequence(SequenceIdentitySequence.getInstance, false, reset: true);
    if (currentval != null) {
      currentval(val);
    }
    return val;
  }
}

/// End Region SEQUENCE IdentitySequence

class EmployeesModelSequenceManager extends SqfEntityProvider {
  EmployeesModelSequenceManager() : super(EmployeesModel());
}
// END OF ENTITIES
