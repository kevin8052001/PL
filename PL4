# include <stdio.h>
# include <stdlib.h>
# include <iostream>
# include <string.h>


using namespace std ;

typedef char Str100[ 500 ] ;

struct TAble_ident_function {
  Str100 value ;
  Str100 name ; // 名稱
  int ref ;
} ;// Data()

typedef TAble_ident_function Table_ident_function ;


struct IDent_function {
  Table_ident_function ident[ 50 ] ;
  int many ;
} ;// Data()

typedef IDent_function Ident_function ;
Ident_function gfunction[ 100 ] ;

struct InputArrary {
  Str100 value ; // 名稱
} ;// Data()

typedef InputArrary Arrary ;


struct InputData {
  Str100 name ; // 名稱
} ;// Data()

typedef InputData InformationData ;
InformationData gInput[ 1000 ] ;

struct Inside{
  Str100 linetoken ; // reg function 裡面的變數 token
  Str100 type ;
  Str100 value ;
  int ref ;
  Inside * next ;
  Arrary arrary[ 100 ] ; // array用的
} ; // Inside()

typedef Inside * InformationInside ;

struct Range{
  InformationInside nexthead ;
  InformationInside nexttail ;
  Range * up ; // 到上一個表格
  Range * down ; // 到下一個表格
} ; // Range()

typedef Range * InformationRange ;


struct Data {
  Str100 name ; // 名稱
  Str100 type ; // 型別
  Str100 value ; // 值
  int constantnum ; // 是否有沒有constatunm
  InformationInside linehead ; // 接function 的頭
  InformationInside linetail ; // 接function 的尾
  bool functionToF ; // 判斷它是不是function
  bool repeatTorF ; // 判斷它是不是重複
  InformationRange rangehead ; // 接range的頭
  InformationRange rangetail ; // 接range的尾巴
  Arrary arrary[ 100 ] ; // array用的
  int len ;
  int lineNow ;
} ;// Data()


typedef Data Information ;
Information gtable[ 1000 ] ;
Information gcopy_table[ 1000 ] ;

Str100 gtemp ; // 切下來的token
char gch = '\0' ; // 用來切的token字元
int gTestNum ; // 題號
int gtablenum ; // table總數
int gtablenow ; // 目前位置
int gerrorline ; // 錯誤行數
int giftokenenter ; // 用來判斷下一個token 之前有幾個enter
bool gN_GT ; // 用來是否要拿下一個Token
bool gSave_token ; // 用來控制是否要開始做存入
bool gfirstinexpression ; // 用來判斷是不是第一次進入expression
bool gnoteenter ; // 有可能是一堆住解後面直接接enter

int gLineTotal ; // 總共有幾行
int gLineNow ; // 目前在第幾行
int gLen ; // 目前在那一行的哪一格
bool gtype_error ; // 判斷是不是type_error
bool gcout_stamement ; // 判斷有沒有從cout的地方cout東西
bool g_if_not_do ; // 這是用來判斷if的expression是true來做事情用的
Str100 ganswr_string ;

Str100 gfunctionident ;
int gfunctionidentnow ;
int gfunctionnumber ;

int Test() ; // 測試用
void Cleanall()  ;

void ReadLine() ;
void GetToken() ; // 拿下一個Token
int WhatType() ; // 字元是什麼型別
bool CheckToken( char ch ) ; // 確認字串類別
bool CheckNumToken( char ch ) ; // 確認數字類別
void String() ; // 切出字串
void Number() ; // 切出數字
void Symbol() ; // 切出符號
bool Sign( int &type ) ; // + - !
bool Assignment_operator( int &type ) ; // = TDRPM(D)
bool Is_Identifier() ; // 確認是否為Identifier
bool Is_Constant() ; // 確認是否為Constant
void SaveToken() ; // 這是用來存放function的token
int InBuildFunction() ; // 內建功能
void CleanAllrepeat() ; // 因為一開始一定沒有重複 所以要全部set false
void DoRepeat() ; // 處理重複
void Clean_Arrary() ; // 錯誤要清理
bool Check_Not_Function_Id() ; // 找尋有無這個Identifier
bool Cin() ; // 讀入
bool Cout() ; // 輸出
void ListAllVariables() ; // 列出所有變數
void ListAllFunctions() ; // 列出所有function
void ListVariable() ; // 列出變數
void ListFunction() ; // 列出function
bool GoDefinition() ; // 是否會進去定義
void SaveReg( Str100 name, Str100 type ) ; // 儲存reg
void Setanewtable() ; // 給他一個reg表格
void DeletTable() ; // 刪除一個reg表格
bool InsideIDcheck() ; // 第2到多層檢查
void HisaSytle( int i ) ; // 夏氏風格
void Resit() ; // 洗白
void Is_Constant_value( Str100 & temp, Str100 temptype ) ;
bool Calculate( Str100 temp1, Str100 temp2, Str100 temp1_type, Str100 temp2_type,
                 Str100 symbol, Str100 &answer, Str100 &type ) ;

void Assignment_Ident( Str100 tempname, Str100 ans, Str100 type, int idex, int in_or_out ) ;
void GetValue_Ident( Str100 tempname, Str100 &ans, Str100 &type, int idex, int in_or_out ) ;

bool Function_do( Str100 &ans ) ;
bool Function_in_value() ;
void GiveReg( Str100 name, Str100 type, int i, int ref ) ;
void Find_function_space( Str100 name, int &len, int &Line ) ;
void Function_ident_ref() ;
void Function_ident_resit() ;
// --------以上是判斷類別------------------

void User_input() ;
bool Definition() ;
bool Type_specifier() ;
bool Function_definition_or_declarators() ;
bool Rest_of_declarators() ;
bool Rest_of_declarators_of_rage( Str100 name, Str100 type ) ;
bool Function_definition_without_ID() ;
bool Formal_parameter_list() ;
bool Compound_statement( Str100 &ans, Str100 &type, bool if_do_once, bool while_do_once ) ;
bool Declaration() ;

// ----------part1---------------------

bool Statement( Str100 &ans, Str100 &type, bool if_do_once, bool while_do_once ) ;
bool Statement_Inside_If( Str100 &ans, Str100 &type, bool if_do_once ) ;
bool Statement_Inside_while( Str100 &ans, Str100 &type, bool while_do_once ) ;
bool Statement_Inside_D0_while( Str100 &ans, Str100 &type, bool while_do_once, int dolen, int dolinenow ) ;
bool Expression( Str100 &ans, Str100 &type ) ;
bool Rest_of_expression() ;
bool Basic_expression( Str100 &ans, Str100 &type ) ;
bool Rest_of_Identifier_started_basic_exp( Str100 &ans, Str100 &type, int PP_MM ) ;
bool Rest_of_PPMM_Identifier_started_basic_exp() ;
bool Signed_basic_expression( Str100 &ans, Str100 &type, int symbolnum ) ;
bool Rest_of_Identifier_started_signed_basic_exp( Str100 &ans, Str100 &type, int signtype ) ;
bool Actual_parameter_list() ;
bool Non_comma_expression( Str100 &ans, Str100 &type ) ;
bool Rest_of_non_comma_expression() ;
// ---------------part2-------------------
bool Rest_of_maybe_logical_OR_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_logical_AND_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_logical_AND_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_bit_OR_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_bit_OR_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_bit_ex_OR_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_bit_ex_OR_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_bit_AND_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_bit_AND_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_equality_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_equality_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_relational_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_relational_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_shift_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_shift_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_additive_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_additive_exp( Str100 &ans, Str100 &type ) ;
bool Maybe_mult_exp( Str100 &ans, Str100 &type ) ;
bool Rest_of_maybe_mult_exp( Str100 &ans, Str100 &type ) ;
bool Unary_exp( Str100 &ans, Str100 &type ) ;
bool Signed_unary_exp( Str100 &ans, Str100 &type, int symbolnum ) ;
bool Rest_of_Identifier_started_unary_exp( Str100 &ans, Str100 &type, int signtype ) ;




int main() {
  gfunctionidentnow = 0 ;
  gfunctionnumber = 0 ;

  gcout_stamement = false ;
  gerrorline = 1 ; // 這邊還要再做確定!!!!!!!!!!!!!!!!
  cin >> gTestNum ;
  scanf( "%c", &gch ) ;


  Cleanall() ;
  ReadLine() ;
  cout << "Our-C running ..." << "\n" ;
  User_input() ;
  cout << "> Our-C exited ..." << "\n"  ;


  // return (EXIT_SUCCESS);
} // main()

void ReadLine() {
  char ch = '\0' ;
  bool codeQuit = false ;
  gLineTotal = 0 ;
  strcpy( gInput[gLineTotal].name, "" ) ;
  if ( scanf( "%c", &ch ) == EOF )
    codeQuit = true ;
  while ( codeQuit != true ) {

    gInput[gLineTotal].name[strlen( gInput[gLineTotal].name )] = ch ;

    if ( ch == '\n' ) {
      gLineTotal = gLineTotal + 1 ;
      strcpy( gInput[gLineTotal].name, "" ) ;
    } // if()

    if ( scanf( "%c", &ch ) == EOF )
      codeQuit = true ;
  } // while()


} // ReadLine()


void GetToken() {
  int type = 0 ; // 型別判斷的int
  memset( gtemp, '\0', sizeof(gtemp) ); // 使用前先清空

  if ( gnoteenter ) ; // 註解的狀況不能歸零
  else giftokenenter = 0 ; //

  while ( gInput[gLineNow].name[gLen] == ' ' || gInput[gLineNow].name[gLen] == '\n' ||
          gInput[gLineNow].name[gLen] == '\t' || gInput[gLineNow].name[gLen] == '\0' ||
          gInput[gLineNow].name[gLen] == '\r' ) {


    if ( gInput[gLineNow].name[gLen] == '\n' ) {
      gLineNow++ ;
      gLen = 0 ;
      giftokenenter = giftokenenter + 1 ;
      gerrorline = gerrorline + 1 ;
    } // if()

    else
      gLen++ ;
  } // while()

  type = WhatType() ; // 型別判斷

  if ( type == 1 ) // 字串
    String() ;
  else if ( type == 2 ) // 數字
    Number() ;
  else if ( type == 3 ) // 符號
    Symbol() ;
} // GetToken()

int WhatType() {
  if ( gInput[gLineNow].name[gLen] >= 65 && gInput[gLineNow].name[gLen] <= 90 ) // 小寫
    return 1 ;
  else if ( gInput[gLineNow].name[gLen] >= 97 && gInput[gLineNow].name[gLen] <= 122 ) // 大寫
    return 1 ;
  else if ( gInput[gLineNow].name[gLen] >= 48 && gInput[gLineNow].name[gLen] <= 57 ) // 數字
    return 2 ;
  else if ( gInput[gLineNow].name[gLen] == '_' ) // 底線開頭的字串
    return 1 ;
  else if ( gInput[gLineNow].name[gLen] == '\n' || gInput[gLineNow].name[gLen] == ' ' ||
            gInput[gLineNow].name[gLen] == '\t' || gInput[gLineNow].name[gLen] == '\0' ) // 不用存的token
    return 4 ;
  else if ( gInput[gLineNow].name[gLen] == '\r' )
    return 4 ;
  else // 符號
    return 3 ;
} // WhatType()

bool CheckToken( char ch ) {
  if ( ch >= 65 && ch <= 90 ) // 小寫
    return true ;
  else if ( ch >= 97 && ch <= 122 ) // 大寫
    return true ;
  else if ( ch >= 48 && ch <= 57 ) // 數字
    return true ;
  else if ( ch == '_' ) // 底線開頭的字串
    return true ;
  else // 不是字串應該出現的東西
    return false ;
} // CheckToken()

bool CheckNumToken( char ch ) {
  if ( ch >= 48 && ch <= 57 ) // 數字
    return true ;
  else if ( ch == '.' ) // 可能有小數的狀況
    return true ;
  else if ( ch >= 65 && ch <= 90 ) // 小寫不應該出現在數字裡
    return false ;
  else if ( ch >= 97 && ch <= 122 ) // 小寫不應該出現在數字裡
    return false ;
  else // 不是數字應該出現的東西
    return false ;
} // CheckNumToken()

void String() {

  while ( CheckToken( gInput[gLineNow].name[gLen] ) != false ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen++ ;
  } // while()

  if ( gSave_token ) SaveToken() ; // 可能要放存入的位置
} // String()

void Number() {

  int count = 0 ;
  while ( CheckNumToken( gInput[gLineNow].name[gLen] ) != false && count <= 1 ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen++ ;
    if ( gInput[gLineNow].name[gLen] == '.' ) count = count + 1 ; // !!注意他只能有一個小數點
  } // while()

  if ( gSave_token ) SaveToken() ; // 可能要放存入的位置
} // Number()

void Symbol() {
  bool store = false ;

  if ( gInput[gLineNow].name[gLen] == '<' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
    else if ( gInput[gLineNow].name[gLen] == '<' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // else if()

  } // if()
  // ----------------------(<= << )-------------------------
  else if ( gInput[gLineNow].name[gLen] == '>' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()

    else if ( gInput[gLineNow].name[gLen] == '>' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // else if()
  } // else if()
  // ------------------------( >= >> )----------------------------

  else if ( gInput[gLineNow].name[gLen] == '/' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
    else if ( gInput[gLineNow].name[gLen] == '/' ) {
      memset( gtemp, '\0', sizeof(gtemp) );
      while ( gInput[gLineNow].name[gLen] != '\n' )
        gLen++ ;
      store = true ;
      gnoteenter = true ;
      GetToken() ;
    } // else if()
  } // else if()

  // -----------------------( // /=)-------------------------------------

  else if ( gInput[gLineNow].name[gLen] == '+' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
    else if ( gInput[gLineNow].name[gLen] == '+' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // else if()
  } // else if()

  // -------------------( += ++ )---------------------------------

  else if ( gInput[gLineNow].name[gLen] == '-' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()

    else if ( gInput[gLineNow].name[gLen] == '-' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // else if()
  } // else if()

  // ----------------( -= -- )------------------

  else if ( gInput[gLineNow].name[gLen] == '!' || gInput[gLineNow].name[gLen] == '*' ||
            gInput[gLineNow].name[gLen] == '%' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
  } // else if()
  // ---------------( != *= /= %= )-------------------

  else if ( gInput[gLineNow].name[gLen] == '=' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '=' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
  } // else if()

  // ---------------( == )-------------------------

  else if ( gInput[gLineNow].name[gLen] == '|' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '|' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
  } // else if()

  // ---------------( || )-------------------------
  else if ( gInput[gLineNow].name[gLen] == '&' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    if ( gInput[gLineNow].name[gLen] == '&' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
    } // if()
  } // else if()
  // ---------------( && )-------------------------

  else if ( gInput[gLineNow].name[gLen] == '"' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    while ( gInput[gLineNow].name[gLen] != '"' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
      if ( gInput[gLineNow].name[gLen] == '"' ) gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    } // while()

    gLen = gLen + 1 ;
  } // else if()

  // --------------------( "sadasdasd" )

  else if ( gInput[gLineNow].name[gLen] == '\'' ) {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
    while ( gInput[gLineNow].name[gLen] != '\'' ) {
      gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
      gLen = gLen + 1 ;
      if (  gInput[gLineNow].name[gLen] == '\'' ) gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    } // while()

    gLen = gLen + 1 ;
  } // else if()

  // ----------------------------( 's' )

  else {
    gtemp[strlen( gtemp )] = gInput[gLineNow].name[gLen] ;
    gLen = gLen + 1 ;
  } // else()

  if ( gSave_token && !store ) SaveToken() ; // 可能要放存入的位置
} // Symbol()

bool Sign( int &type ) {
  if ( strcmp( gtemp, "-" ) == 0 ) { // 減號的狀況
    type = 1 ;
    return true;
  } // if ( strcmp( gtemp, "-" ) == 0 )
  else if ( strcmp( gtemp, "+" ) == 0 ) { // 加號的狀況
    type = 2 ;
    return true;
  } // else if ( strcmp( gtemp, "+" ) == 0 )
  else if ( strcmp( gtemp, "!" ) == 0 ) { // !號的狀況
    type = 3 ;
    return true;
  } // else if ( strcmp( gtemp, "!" ) == 0 )
  else {
    type = -1 ;
    return false;
  } // else

} // Sign()

bool Assignment_operator( int &type ) {
  if ( strcmp( gtemp, "=" ) == 0 ) { // =的狀況
    type = 1 ;
    return true;
  } // if ( strcmp( gtemp, "=" ) == 0 )
  else if ( strcmp( gtemp, "*=" ) == 0 ) { // TE的狀況
    type = 2 ;
    return true;
  } // else if ( strcmp( gtemp, "*=" ) == 0 )
  else if ( strcmp( gtemp, "/=" ) == 0 ) { // DE的狀況
    type = 3 ;
    return true;
  } // else if ( strcmp( gtemp, "/=" ) == 0 )
  else if ( strcmp( gtemp, "%=" ) == 0 ) { // RE的狀況
    type = 4 ;
    return true;
  } // else if ( strcmp( gtemp, "%=" ) == 0 )
  else if ( strcmp( gtemp, "+=" ) == 0 ) { // PE的狀況
    type = 5 ;
    return true;
  } // else if ( strcmp( gtemp, "+=" ) == 0 )
  else if ( strcmp( gtemp, "-=" ) == 0 ) { // ME的狀況
    type = 6 ;
    return true;
  } // else if ( strcmp( gtemp, "-=" ) == 0 )
  else {
    type = -1 ;
    return false;
  } // else

} // Assignment_operator()

bool Is_Identifier() {
  if ( strcmp( gtemp, "true" ) == 0 || strcmp( gtemp, "false" ) == 0 || strcmp( gtemp, "int" ) == 0 ||
       strcmp( gtemp, "float" ) == 0 || strcmp( gtemp, "char" ) == 0 || strcmp( gtemp, "bool" ) == 0 ||
       strcmp( gtemp, "string" ) == 0 || strcmp( gtemp, "void" ) == 0 || strcmp( gtemp, "if" ) == 0 ||
       strcmp( gtemp, "else" ) == 0 || strcmp( gtemp, "while" ) == 0 || strcmp( gtemp, "return" ) == 0 ||
       strcmp( gtemp, "cout" ) == 0 || strcmp( gtemp, "cin" ) == 0 || strcmp( gtemp, "do" ) == 0 )
    return false ; // 字串不能等於這些命令字串
  else if (  gtemp[0] == '_' ) return true ; // 底線開頭

  else if ( gtemp[0] >= 65 && gtemp[0] <= 90 ) return true ; // 大小寫開頭

  else if ( gtemp[0] >= 97 && gtemp[0] <= 122 ) return true ; // 大小寫開頭

  else
    return false ;
} // Is_Identifier()

bool Is_Constant() {
  if ( strcmp( gtemp, "true" ) == 0 ) return true ; // true 的字串
  else if ( strcmp( gtemp, "false" ) == 0 ) return true ; // fasle 的字串
  else if ( gtemp[0] == '"' ) return true ; // 雙扣的結果
  else if ( gtemp[0] == '\'' ) return true ; // 雙點的結果
  else if ( gtemp[0] >= 48 && gtemp[0] <= 57 ) return true ; // 字頭是否在數字範圍的結果
  else return false ; // 都不是的結果
} // Is_Constant()

bool Type_specifier() { // 是這5種類別
  if ( strcmp( gtemp, "int" ) == 0 || strcmp( gtemp, "float" ) == 0 || strcmp( gtemp, "char" ) == 0 ||
       strcmp( gtemp, "bool" ) == 0 || strcmp( gtemp, "string" ) == 0 )  {
    return true ;
  } // if()

  else
    return false ;
} // Type_specifier()

// -----------------------------------------------------------------------------

void SaveToken() { // 存放function的token

  InformationInside temp = NULL ;
  temp = new Inside ;
  strcpy( temp -> linetoken, gtemp ) ;
  temp -> next = NULL ;

  if ( gtable[gtablenum].linehead == NULL ) { // head = null
    gtable[gtablenum].linehead = temp ;
    gtable[gtablenum].linetail =  gtable[gtablenum].linehead ;
  } // if ()

  else { // head != null
    gtable[gtablenum].linetail -> next = temp ;
    gtable[gtablenum].linetail = temp ;
  } // else


} // SaveToken()

// -----------------------------------------------------------------------------

void SaveReg( Str100 name, Str100 type ) {

  InformationInside temp = NULL ;
  temp = new Inside ;
  strcpy( temp -> linetoken, name ) ;
  strcpy( temp -> type, type ) ;
  temp -> next = NULL ;

  if ( gtable[gtablenum].rangetail -> nexthead == NULL ) {
    gtable[gtablenum].rangetail -> nexthead = temp ;
    gtable[gtablenum].rangetail -> nexttail = temp ;
  } // if ()

  else {
    gtable[gtablenum].rangetail -> nexttail -> next = temp ;
    gtable[gtablenum].rangetail -> nexttail = temp ;
  } // else


} // SaveReg()

// -----------------------------------------------------------------------------

void Setanewtable() {
  InformationRange temp = NULL ;
  temp = new Range ;
  temp -> nexthead = NULL ;
  temp -> nexttail = NULL ;
  temp -> up = NULL ;
  temp -> down = NULL ;

  if ( gtable[gtablenum].rangehead == NULL ) {
    gtable[gtablenum].rangehead = temp ;
    gtable[gtablenum].rangetail = temp ;
  } // if()

  else {
    temp -> up = gtable[gtablenum].rangetail ;
    gtable[gtablenum].rangetail -> down = temp ;
    gtable[gtablenum].rangetail = temp ;
  } // else

} // Setanewtable()

// -----------------------------------------------------------------------------

void DeletTable() {


  if ( gtable[gtablenum].rangetail -> up == NULL ) {
    gtable[gtablenum].rangetail = NULL ;
    gtable[gtablenum].rangehead = NULL ;
  } // if()

  else {
    gtable[gtablenum].rangetail = gtable[gtablenum].rangetail -> up ;
    gtable[gtablenum].rangetail -> down = NULL ;
  } // else

} // DeletTable()

// -----------------------------------------------------------------------------

bool InsideIDcheck() {

  for ( InformationRange temp = gtable[gtablenum].rangehead ; temp != NULL ; temp = temp -> down ) {
    for ( InformationInside temp2 = temp -> nexthead ; temp2 != NULL ; temp2 = temp2 -> next ) {
      if ( strcmp( temp2 -> linetoken, gtemp ) == 0 ) return true ;
    } // for()
  } // for()

  return false ;
} // InsideIDcheck()

// -----------------------------------------------------------------------------
int InBuildFunction() {

  if ( strcmp( gtemp, "ListAllVariables" ) == 0 ) {
    GetToken() ;
    GetToken() ;
    GetToken() ;
    ListAllVariables() ;
    return 2 ;
  } // if ( strcmp( gtemp, "ListAllVariables" ) == 0 )

  else if ( strcmp( gtemp, "ListAllFunctions" ) == 0 ) {
    GetToken() ;
    GetToken() ;
    GetToken() ;
    ListAllFunctions() ;
    return 2 ;
  } // else if ( strcmp( gtemp, "ListAllFunctions" ) == 0 )

  else if ( strcmp( gtemp, "ListVariable" ) == 0 ) {
    GetToken() ;
    GetToken() ;
    ListVariable() ;
    GetToken() ;
    GetToken() ;
    return 2 ;
  } // else if ( strcmp( gtemp, "ListVariable" ) == 0 )

  else if ( strcmp( gtemp, "ListFunction" ) == 0 ) {
    GetToken() ;
    GetToken() ;
    ListFunction() ;
    GetToken() ;
    GetToken() ;
    return 2 ;
  } // else if ( strcmp( gtemp, "ListFunction" ) == 0 )
  else if ( strcmp( gtemp, "Done" ) == 0 ) {
    GetToken() ;
    GetToken() ;
    GetToken() ;
    return -1 ;
  } // else if ( strcmp( gtemp, "Done" ) == 0 )

  else return 1 ;
} // InBuildFunction()

// -----------------------------------------------------------------------------
void CleanAllrepeat() {
  for ( int i = 0 ; i < gtablenum ; i++ )
    gtable[i].repeatTorF = false ; // 重置repeat
} // CleanAllrepeat()
// -----------------------------------------------------------------------------

void DoRepeat() {
  int temp_gtablenow = gtablenow ;
  int temp_gtablenum =  gtablenum ;

  for ( int i = 0 ; i < gtablenow ; i++ )  {
    if ( gtable[i].repeatTorF ) {
      for ( int j = i ; j < gtablenum - 1 ; j++ ) {
        gtable[j].linehead = gtable[j+1].linehead ; // head
        gtable[j].linetail = gtable[j+1].linetail ; // tail
        gtable[j].rangehead = gtable[j+1].rangehead ; // head
        gtable[j].rangetail = gtable[j+1].rangetail; // tail
        gtable[j].constantnum = gtable[j+1].constantnum ; // constantnum
        strcpy( gtable[j].name, gtable[j+1].name ) ; // naem
        strcpy( gtable[j].type, gtable[j+1].type ) ; // type
        gtable[j].repeatTorF = gtable[j+1].repeatTorF ; // repeat
        gtable[j].functionToF = gtable[j+1].functionToF ; // is function or not
      } // for ( j = i ; j < total - 1 ; j++ )

      gtablenow = gtablenow -1 ; // 因為全部處理完要扣一
      gtablenum = gtablenum -1 ; // 因為全部處理完要扣一
      i = i - 1 ; // 因為全部處理完要扣一
    } // if ( gtable[i].isrepeat )
  } // for (int i = 0 ; i < gtablenow ; i++ )

} // DoRepeat()

// -----------------------------------------------------------------------------
void Clean_Arrary() {
  for ( int i = gtablenow ; i < gtablenum ; i++ ) { // 錯誤要初始化
    gtable[i].linehead = NULL ;
    gtable[i].linetail = NULL ;
    gtable[i].rangehead = NULL ;
    gtable[i].rangetail = NULL ;
    gtable[i].constantnum = 0 ;
    strcpy( gtable[i].name, "" ) ;
    strcpy( gtable[i].type, "" ) ;
    gtable[i].repeatTorF = false ;
    gtable[i].functionToF = false ;
  } // for()
} // Clean_Arrary()
// ------------------------------------------------------------------------------

void Resit() {
  gerrorline = 0 ;
  gnoteenter = false ;
  gcout_stamement = false ;
  gtype_error = false ;
  g_if_not_do = true ;
  memset( ganswr_string, '\0', sizeof(ganswr_string) ); // 使用前先清空
  gtable[gtablenum].linehead = NULL ;
  gtable[gtablenum].linetail =  NULL ;
  gtable[gtablenum].rangehead = NULL ;
  gtable[gtablenum].rangetail =  NULL ;
} // Resit()


// -----------------------------------------------------------------------------
bool Check_Not_Function_Id() {
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    if ( strcmp( gtable[i].name, gtemp ) == 0 ) {
      if ( !gtable[gtablenum].functionToF )  return true ;
    } // if ( strcmp( gtable[i].name, gtemp ) == 0 )
  } // for( int i = 0 ; i < gtablenum ; i++ )

  return false ;
} // Check_Not_Function_Id()
// ------------------------------------------------------------------------------

// -----------------------------------------------------------------------------
bool Cin() {
  while ( strcmp( gtemp, ">>" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( Is_Identifier() ) {
      if ( gfirstinexpression ) {
        if ( !Check_Not_Function_Id() ) return false ;
      } // if ()

      else {
        if ( Check_Not_Function_Id() || InsideIDcheck() ) ;
        else return false ;
      } // else

      gN_GT = true ;
    } // if()

    else return false ;

    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( Is_Identifier() ) {
        if ( gfirstinexpression ) {
          if ( !Check_Not_Function_Id() ) return false ;
        } // if ()

        else {
          if ( Check_Not_Function_Id() || InsideIDcheck() ) ;
          else return false ;
        } // else

        gN_GT = true ;
        GetToken() ;
      } // if()

      else if ( Is_Constant() ) {
        gN_GT = true ;
        GetToken() ;
      } // else if ()

      else return false ;

      while ( strcmp( gtemp, "+" ) == 0 || strcmp( gtemp, "-" ) == 0 ) {
        gN_GT = true ;
        GetToken() ;
        if ( Is_Identifier() ) {
          if ( gfirstinexpression ) {
            if ( !Check_Not_Function_Id() ) return false ;
          } // if ()

          else {
            if ( Check_Not_Function_Id() || InsideIDcheck() ) ;
            else return false ;
          } // else

          gN_GT = true ;
          GetToken() ;
        } // if()

        else if ( Is_Constant() ) {
          gN_GT = true ;
          GetToken() ;
        } // else if ()

        else return false ;

        if ( gN_GT ) GetToken() ;
      } // while()

      gN_GT = false ;

      if ( strcmp( gtemp, "]" ) != 0 ) return false ;
      gN_GT = true ;
    } // if()
    else gN_GT = false ;

    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, ">>" ) == 0 )

  gN_GT = false ;

  if ( strcmp( gtemp, ";" ) == 0 ) {
    gN_GT = true ;
    return true ;
  } // if ( strcmp( gtemp, ";" ) == 0 )
  else return false ;
} // Cin()
// ------------------------------------------------------------------------------

// -----------------------------------------------------------------------------
bool Cout() {
  Str100 ans, type ;
  int count = 0 ;


  while ( strcmp( gtemp, "<<" ) == 0 ) {

    gN_GT = true ;
    GetToken() ;
    if ( Expression( ans, type ) ) {

      if ( g_if_not_do ) {
        if ( count <= 0 )
          strcat( ganswr_string, "> " ) ;
        strcat( ganswr_string, ans ) ;
        gcout_stamement = true ;
        count++ ;
      } // if()

    } // if( Expression( ans, type ) )
    else return false ;

    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, "<<" ) == 0 )

  gN_GT = false ;

  if ( strcmp( gtemp, ";" ) == 0 ) {
    gN_GT = true ;

    if ( g_if_not_do ) {
      strcat( ganswr_string, "Statement executed ..." ) ;
      strcat( ganswr_string, "\n" ) ;
    } // if()

    return true ;
  } // if ( strcmp( gtemp, ";" ) == 0 )
  else return false ;
} // Cout()
// ------------------------------------------------------------------------------
// 644068887 17630

// -----------------------------------------------------------------------------
void ListAllVariables() {
  Information temp[ 1 ] ;
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    for ( int j = 0 ; j < gtablenum - i - 1 ; j++ ) {
      if ( strcmp( gtable[j].name, gtable[j+1].name ) > 0 ) {
        temp[0] = gtable[j] ;
        gtable[j] = gtable[j+1] ;
        gtable[j+1] = temp[0] ;
      } // if ( strcmp( gtable[j].name, gtable[j+1].name ) > 0 )
    } // for ( int j = 0 ; j < gtablenum - 1 ; j++ )
  } // for ( int i = 0 ; i < gtablenum ; i++ )

  cout << "> " ;
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    if ( !gtable[i].functionToF )
      cout << gtable[i].name << "\n" ;
  } // for ( int i = 0 ; i < gtablenum ; i++ )

  cout << "Statement executed ..." << "\n" ;
} // ListAllVariables()
// ------------------------------------------------------------------------------

// -----------------------------------------------------------------------------
void ListAllFunctions() {
  Information temp[ 1 ] ;
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    for ( int j = 0 ; j < gtablenum - i - 1 ; j++ ) {
      if ( strcmp( gtable[j].name, gtable[j+1].name ) > 0 ) {
        temp[0] = gtable[j] ;
        gtable[j] = gtable[j+1] ;
        gtable[j+1] = temp[0] ;
      } // if ( strcmp( gtable[j].name, gtable[j+1].name ) > 0 )
    } // for ( int j = 0 ; j < gtablenum - 1 ; j++ )
  } // for ( int i = 0 ; i < gtablenum ; i++ )

  cout << "> " ;
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    if ( gtable[i].functionToF )
      cout << gtable[i].name << "()" << "\n" ;
  } // for ( int i = 0 ; i < gtablenum ; i++ )

  cout << "Statement executed ..." << "\n" ;
} // ListAllFunctions()
// ------------------------------------------------------------------------------

// -----------------------------------------------------------------------------
void ListVariable() {
  Str100 temp ;
  memset( temp, '\0', sizeof(temp) );
  for ( int i = 1 ; i < strlen( gtemp ) - 1 ; i++ )
    temp[strlen( temp )] = gtemp[i] ;

  for ( int j = 0 ; j < gtablenum ; j++ ) {
    if ( strcmp( temp, gtable[j].name ) == 0 ) {
      cout << "> " << gtable[j].type << " " << gtable[j].name ;
      if ( gtable[j].constantnum != 0 )
        cout << "[ " << gtable[j].constantnum << " ]" << " ;" << "\n" ;
      else
        cout << " ;" << "\n" ;
    } // if ( strcmp( temp, gtable[i].name ) == 0 )
  } // for ( int j = 0 ; j < gtablenum ; j++ )

  cout << "Statement executed ..." << "\n" ;
} // ListVariable()
// ------------------------------------------------------------------------------

// -----------------------------------------------------------------------------
void ListFunction() {
  Str100 temp ;
  memset( temp, '\0', sizeof(temp) );
  for ( int i = 1 ; i < strlen( gtemp ) - 1 ; i++ )
    temp[strlen( temp )] = gtemp[i] ;

  for ( int j = 0 ; j < gtablenum ; j++ ) {
    if ( strcmp( temp, gtable[j].name ) == 0 ) {
      HisaSytle( j ) ;
    } // if ( strcmp( temp, gtable[i].name ) == 0 )
  } // for ( int j = 0 ; j < gtablenum ; j++ )

  cout << "Statement executed ..." << "\n" ;
} // ListFunction()
// ------------------------------------------------------------------------------
void HisaSytle( int i ) {
  InformationInside temp2 ;
  temp2 = new Inside ;
  temp2 -> next = NULL ;
  int num = 0 ;
  int cont ;
  cout << "> " ;
  for ( InformationInside temp = gtable[i].linehead ; temp != NULL ; temp = temp -> next ) {
    if ( temp -> next != NULL )
      temp2 = temp ;
    if ( strcmp( temp2 -> next -> linetoken, "(" ) == 0 ||
         strcmp( temp2 -> next -> linetoken, "[" ) == 0 ||
         strcmp( temp2 -> next -> linetoken, "++" ) == 0 ||
         strcmp( temp2 -> next -> linetoken, "--" ) == 0 ||
         strcmp( temp2 -> next -> linetoken, "," ) == 0 ) {

      if ( strcmp( temp -> linetoken, "while" ) == 0 ||
           strcmp( temp -> linetoken, "if" ) == 0 )
        cout << temp -> linetoken << " " ;
      else
        cout << temp -> linetoken  ;

    } // if()

    else {
      if ( strcmp( temp -> linetoken, "{" ) == 0 ) {
        cont = cont + 1 ;
        num = num + 2 ;
        cout << temp -> linetoken << "\n" ;
        for ( int i = 0 ; i < num ; i++ )
          cout << " " ;
      } // if()

      else if ( strcmp( temp -> linetoken, ";" ) == 0 ) {
        cout << temp -> linetoken << "\n" ;
        if ( strcmp( temp2 -> next -> linetoken, "}" ) != 0 ) {
          for ( int i = 0 ; i < num ; i++ )
            cout << " " ;
        } // if()

        else {
          if ( cont > 1 ) {
            for ( int i = 0 ; i < num-2 ; i++ )
              cout << " " ;
          } // if()
        } // else
      } // else if()

      else if ( strcmp( temp -> linetoken, "}" ) == 0 ) {
        cont = cont - 1 ;
        num = num - 2 ;
        cout << temp -> linetoken << "\n" ;
        if ( strcmp( temp2 -> next -> linetoken, "}" ) != 0 ) {
          for ( int i = 0 ; i < num ; i++ )
            cout << " " ;
        } // if()

        else {
          if ( cont > 1 ) {
            for ( int i = 0 ; i < num-2 ; i++ )
              cout << " " ;
          } // if()
        } // else
      } // else if()

      else
        cout << temp -> linetoken << " " ;
    } // else

  } // for()


} // HisaSytle()
// ------------------------------------------------------------------------------

bool GoDefinition() {
  if ( strcmp( gtemp, "int" ) == 0 || strcmp( gtemp, "float" ) == 0 ||
       strcmp( gtemp, "char" ) == 0 || strcmp( gtemp, "bool" ) == 0 ||
       strcmp( gtemp, "string" ) == 0 || strcmp( gtemp, "void" ) == 0 )
    return true ;

  else
    return false ;
} // GoDefinition()

// ------------------------------------------------------------------------------






// ------------------------------------------------------------------------------

void User_input() {

  g_if_not_do = true ;
  bool if_do_once = true ;

  int control_InBuildFunction = 0 ;
  int tenpenter = 0 ;
  Str100 ans, type ;

  memset( ans, '\0', sizeof(ans) ); // 使用前先清空
  memset( type, '\0', sizeof(type) ); // 使用前先清空
  memset( ganswr_string, '\0', sizeof(ganswr_string) ); // 使用前先清空

  GetToken() ;
  control_InBuildFunction = InBuildFunction() ;

  while ( control_InBuildFunction  != -1 ) {

    if ( control_InBuildFunction  == 1 ) {
      CleanAllrepeat() ;

      if ( GoDefinition() ) {
        gtablenow = gtablenum ;
        if ( Definition() ) {
          gtablenum = gtablenum + 1  ;
          DoRepeat() ;
          cout << "> " ;
          for ( int i = gtablenow ; i < gtablenum ; i++ ) {
            if ( !gtable[i].repeatTorF ) {
              if ( !gtable[i].functionToF )
                cout << "Definition of " << gtable[i].name <<  " entered ..." << "\n" ;
              else
                cout << "Definition of " << gtable[i].name <<  "() entered ..." << "\n" ;
            } // if()

            else {
              if ( !gtable[i].functionToF )
                cout << "New definition of " << gtable[i].name <<  " entered ..." << "\n" ;
              else
                cout << "New definition of " << gtable[i].name <<  "() entered ..." << "\n" ;
            } // else

          } // for()

          gnoteenter = false ;
        } // if( Definition() )

        else {
          gerrorline = gerrorline + tenpenter ;
          cout << "> line " << gerrorline << " : syntax error when token is '" << gtemp << "'" << "\n" ;
          while ( gInput[gLineNow].name[gLen] != '\n' )
            gLen++ ;
          gN_GT = true ;
          gnoteenter = false ;
          Clean_Arrary() ;
          gtablenum = gtablenow ;
        } // else
      } // if( strcmp( gtemp, "int" ) == 0 || strcmp( gtemp, "float" ) == 0 || strcmp( gtemp, "char" ) == 0 )

      else {
        if ( strcmp( gtemp, ";" ) != 0 && strcmp( gtemp, "return" ) != 0 &&
             strcmp( gtemp, "if" ) != 0 && strcmp( gtemp, "while" ) != 0 &&
             strcmp( gtemp, "do" ) != 0 && strcmp( gtemp, "{" ) != 0  )
          gfirstinexpression = true ;


        if ( Statement( ans, type, true, true ) ) {

          if ( !gcout_stamement )
            cout << "> Statement executed ..." << "\n" ;

          else
            cout << ganswr_string ;

          gnoteenter = false ;
        } // if ( Statement() )

        else {
          gerrorline = gerrorline + tenpenter ;
          if ( !gtype_error )
            cout << "> line " << gerrorline << " : syntax error when token is '" << gtemp << "'" << "\n" ;
          else if ( gtype_error )
            cout << "> line " << gerrorline << " : type error!" << "\n" ;
          while ( gInput[gLineNow].name[gLen] != '\n' )
            gLen++ ;
          gnoteenter = false ;
          gN_GT = true ;
        } // else
      } // else
    } // if ( InBuildFunction == 1 )
    // else gerrorline = 0 ;




    if_do_once = true ;
    gfirstinexpression = false ;
    gSave_token = false ;
    if ( gN_GT ) GetToken() ;
    tenpenter = giftokenenter ;

    Resit() ;
    memset( ans, '\0', sizeof(ans) ); // 使用前先清空
    memset( type, '\0', sizeof(type) ); // 使用前先清空

    control_InBuildFunction = InBuildFunction() ;
  } // while( InBuildFunction() != 0 )

} // User_input()

bool Definition() {
  bool nowisrepeat = false ;
  SaveToken() ;


  if ( strcmp( gtemp, "void" ) == 0 ) { // 判斷它是不是芳炫
    strcpy( gtable[gtablenum].type, gtemp ) ;
    gSave_token = true ; // 可能要存東西
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Identifier() ) return false ;
    // -----------------------------------------------------------
    for ( int i = 0 ; i < gtablenum ; i++ ) { // 判斷是否重複
      if ( strcmp( gtable[i].name, gtemp ) == 0 ) {
        gtable[i].repeatTorF = true ;
        nowisrepeat = true ; // 有找到重覆代表目前這個要複製上去的也有重複
      } // if( strcmp( gtable[i].name, gtemp ) == 0 )
    } // for ( int i = 0 ; i < gtablenum ; i++ )

    strcpy( gtable[gtablenum].name, gtemp ) ;

    gtable[gtablenum].len = gLen;
    gtable[gtablenum].lineNow = gLineNow ;

    if ( nowisrepeat ) gtable[gtablenum].repeatTorF = true ;
    else gtable[gtablenum].repeatTorF = false ;
    // ----------------------------------------------------------
    GetToken() ;
    if ( !Function_definition_without_ID() ) return false ;
    gtable[gtablenum].functionToF = true ;
    return true ;
  } // if()

  else if ( Type_specifier() ) { // 判斷它是否為5大類別之一
    strcpy( gtable[gtablenum].type, gtemp ) ;
    gN_GT = true ;              // 這個位置[type_specifier] Identifier function_definition_or_declarators
    gSave_token = true ; // 可能要存東西
    GetToken() ;
    if ( !Is_Identifier() ) return false ; // 判斷是否為Is_Identifier1不是的話就false
    // -----------------------------------------------------------
    for ( int i = 0 ; i < gtablenum ; i++ ) { // 判斷是否重複
      if ( strcmp( gtable[i].name, gtemp ) == 0 ) {
        gtable[i].repeatTorF = true ;
        nowisrepeat = true ; // 有找到重覆代表目前這個要複製上去的也有重複
      } // if( strcmp( gtable[i].name, gtemp ) == 0 )
    } // for ( int i = 0 ; i < gtablenum ; i++ )

    strcpy( gtable[gtablenum].name, gtemp ) ;

    gtable[gtablenum].len = gLen;
    gtable[gtablenum].lineNow = gLineNow ;

    strcpy( gtable[gtablenum].value, "0" ) ;
    if ( nowisrepeat ) gtable[gtablenum].repeatTorF = true ;
    else gtable[gtablenum].repeatTorF = false ;
    // ----------------------------------------------------------
    GetToken() ;  // type_specifier 這個位置[Identifier] function_definition_or_declarators
    gN_GT = false ;
    if ( !Function_definition_or_declarators() ) return false ;
    return true ; // type_specifier Identifier 這個位置[function_definition_or_declarators]
  } // else if()

  else
    return false ;
} // Definition()

bool Function_definition_or_declarators() {
  if ( strcmp( gtemp, "(" ) == 0 ) {
    if ( Function_definition_without_ID() ) {
      gtable[gtablenum].functionToF = true ;
      return true ;
    } // if ( Function_definition_without_ID() )
    else return false ;
  } // if( strcmp( gtemp, "(" ) == 0 )
  else {
    gSave_token = false ; // 因為不是芳炫所以可能不用存了
    gtable[gtablenum].functionToF = false ; // 因為不是芳炫所以是ident
    if ( Rest_of_declarators() ) return true ;
    else return false ;
  } // else

  return false ;
} // Function_definition_or_declarators()

bool Rest_of_declarators() {
  bool nowisrepeat = false ;
  if ( strcmp( gtemp, "[" ) == 0 ) { // 一開始先看是不是[
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Constant() ) return false ; // 在判斷是不是Is_Constant
    sscanf( gtemp, "%d", &gtable[gtablenum].constantnum ) ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "]" ) != 0 ) return false ;
    gN_GT = true ;
  } // if ( strcmp( gtemp, "[" ) == 0 )
  else {
    gtable[gtablenum].constantnum = 0 ;
    gN_GT = false ; // 因為可能沒用掉
  } // else

  if ( gN_GT ) GetToken() ;
  while ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Identifier() ) return false ;
    // ---------------------------------------------------
    for ( int i = 0 ; i < gtablenum ; i++ ) { // 判斷是否重複
      if ( strcmp( gtable[i].name, gtemp ) == 0 ) {
        gtable[i].repeatTorF = true ;
        nowisrepeat = true ; // 有找到重覆代表目前這個要複製上去的也有重複
      } // if( strcmp( gtable[i].name, gtemp ) == 0 )
    } // for ( int i = 0 ; i < gtablenum ; i++ )

    gtablenum++ ;
    strcpy( gtable[gtablenum].type, gtable[gtablenum-1].type ) ;
    strcpy( gtable[gtablenum].name, gtemp ) ;
    strcpy( gtable[gtablenum].value, "0" ) ;
    gtable[gtablenum].functionToF = false ;
    if ( nowisrepeat ) gtable[gtablenum].repeatTorF = true ;
    else gtable[gtablenum].repeatTorF = false ;
    // ---------------------------------------------------
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( !Is_Constant() ) return false ;
      sscanf( gtemp, "%d", &gtable[gtablenum].constantnum ) ;
      gN_GT = true ;
      GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 )  return false ;
      gN_GT = true ;
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else {
      gtable[gtablenum].constantnum = 0 ;
      gN_GT = false ;
    } // else

    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, "," ) == 0 )

  gN_GT = false ;
  if ( strcmp( gtemp, ";" ) == 0 ) {
    gN_GT = true ;
    return true ;
  } // if ( strcmp( gtemp, ";" ) == 0 )

  else return false ;

} // Rest_of_declarators()

bool Function_definition_without_ID() {
  bool if_do_once, while_do_once ;
  Str100 ans ;
  Str100 type ;
  if ( strcmp( gtemp, "(" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;
  if ( strcmp( gtemp, "void" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
  } // if ( strcmp( gtemp, "void" ) = 0 )
  else if ( Type_specifier() ) {
    Setanewtable() ;
    if ( Formal_parameter_list() ) {
      if ( gN_GT ) GetToken() ;
    } // else if( Formal_parameter_list() )
    else return false ;
  } // else if ( Type_specifier() )

  if ( strcmp( gtemp, ")" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;
  if ( !Compound_statement( ans, type, if_do_once,  while_do_once ) ) return false ;
  DeletTable() ;
  return true ;
} // Function_definition_without_ID()

bool Formal_parameter_list() {
  Str100 name ;
  Str100 type ;
  if ( !Type_specifier() ) return false ; // !!type_specifier這邊!! [ '&' ] Identifier [ '[' Constant ']' ]
  strcpy( type, gtemp ) ;
  gN_GT = true ;
  GetToken() ;
  if ( strcmp( gtemp, "&" ) == 0 ) { // 是不是[ '&' ]
    gN_GT = true ;
    GetToken() ;
  } // if( strcmp( gtemp, "&" ) == 0 )
  else gN_GT = false ;
  if ( !Is_Identifier() ) return false ;

  strcpy( name, gtemp ) ;

  SaveReg( name, type ) ;
  gN_GT = true ;
  GetToken() ;

  if ( strcmp( gtemp, "[" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Constant() ) return false ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "]" ) != 0 ) return false ;
    gN_GT = true ;
  } // if ( strcmp( gtemp, "[" ) == 0 )
  else gN_GT = false ;

  if ( gN_GT ) GetToken() ;
  while ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Type_specifier() ) return false ;
    strcpy( type, gtemp ) ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "&" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
    } // if( strcmp( gtemp, "&" ) == 0 )
    else gN_GT = false ;

    if ( !Is_Identifier() ) return false ;

    strcpy( name, gtemp ) ;

    SaveReg( name, type ) ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( !Is_Constant() ) return false ;
      gN_GT = true ;
      GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 )  return false ;
      gN_GT = true ;
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ;
    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, "," ) == 0 )

  gN_GT = false ;
  return true ;
} // Formal_parameter_list()

bool Compound_statement( Str100 &ans, Str100 &type, bool if_do_once, bool while_do_once ) {
  int signtype ;
  if ( strcmp( gtemp, "{" ) != 0 ) return false ;
  Setanewtable() ;
  gN_GT = true ;
  GetToken() ;
  while ( Type_specifier() ) {
    if ( !Declaration() ) return false ;
    if ( gN_GT ) GetToken() ;
  } // while( Type_specifier() )

  while ( strcmp( gtemp, ";" ) == 0 || strcmp( gtemp, "return" ) == 0 || strcmp( gtemp, "if" ) == 0 ||
          strcmp( gtemp, "while" ) == 0 || strcmp( gtemp, "do" ) == 0 || strcmp( gtemp, "++" ) == 0 ||
          strcmp( gtemp, "--" ) == 0 || strcmp( gtemp, "(" ) == 0 || strcmp( gtemp, "{" ) == 0 ||
          Sign( signtype ) || Is_Constant() || Is_Identifier() ||
          strcmp( gtemp, "cout" ) == 0 || strcmp( gtemp, "cin" ) == 0 ) {
    if ( !Statement( ans, type, if_do_once, while_do_once ) ) return false ;
    if ( gN_GT ) GetToken() ;
  } // while( strcmp( gtemp, ";" ) == 0 || strcmp( gtemp, "return" ) == 0 || strcmp( gtemp, "if" ) == 0 )



  if ( strcmp( gtemp, "}" ) == 0 ) {
    DeletTable() ;
    gN_GT = true ;
    return true ;
  } // if()
  else return false ;
} // Compound_statement()

bool Declaration() {
  Str100 type ;
  Str100 name ;

  if ( !Type_specifier() ) return false ; // [type_specifier] Identifier rest_of_declarators
  strcpy( type, gtemp ) ;
  gN_GT = true ;
  GetToken() ;
  if ( !Is_Identifier() ) return false ; // type_specifier [Identifier] rest_of_declarators
  strcpy( name, gtemp ) ;

  gN_GT = true ;
  GetToken() ;
  if ( !Rest_of_declarators_of_rage( name, type ) ) return false ;
  return true ;
} // Declaration()
// ------------------------------------------------------------------------------

bool Rest_of_declarators_of_rage( Str100 name, Str100 type ) {
  Str100 name2 ;
  Str100 type2 ;

  if ( strcmp( gtemp, "[" ) == 0 ) { // 一開始先看是不是[
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Constant() ) return false ; // 在判斷是不是Is_Constant
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "]" ) != 0 ) return false ;
    gN_GT = true ;
  } // if ( strcmp( gtemp, "[" ) == 0 )
  else {
    gN_GT = false ; // 因為可能沒用掉
  } // else


  SaveReg( name, type ) ;

  if ( gN_GT ) GetToken() ;
  while ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Identifier() ) return false ;
    strcpy( name2, gtemp ) ;

    SaveReg( name2, type ) ;

    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( !Is_Constant() ) return false ;
      gN_GT = true ;
      GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 )  return false ;
      gN_GT = true ;
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else {
      gN_GT = false ;
    } // else

    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, "," ) == 0 )

  gN_GT = false ;
  if ( strcmp( gtemp, ";" ) == 0 ) {
    gN_GT = true ;
    return true ;
  } // if ( strcmp( gtemp, ";" ) == 0 )

  else return false ;

} // Rest_of_declarators_of_rage()

// --------------------------------------------------------------------------

// ----------------------------------第2部分-----------------------------------
bool Statement( Str100 &ans, Str100 &type, bool if_do_once, bool while_do_once ) {
  int dolen, dolinenow ;


  if ( strcmp( gtemp, ";" ) == 0 ) {
    gN_GT = true ;
    return true ; // 直接分號
  } // if ( strcmp( gtemp, ";" ) == 0 )

  else if ( strcmp( gtemp, "return" ) == 0 ) { // RETURN [ expression ] ';'
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, ";" ) != 0 ) {
      gN_GT = true ;
      if ( !Expression( ans, type ) ) return false ;
      if ( gN_GT ) GetToken() ;
    } // if ( strcmp( gtemp, ";" ) != 0 )

    if ( strcmp( gtemp, ";" ) == 0 ) {
      gN_GT = true ;
      return true ;
    } // if ( strcmp( gtemp, ";" ) == 0 )
    else return false ;
  } // else if ( strcmp( gtemp, "return" ) == 0 )

  else if ( strcmp( gtemp, "if" ) == 0 ) {  // IF '(' expression ')' statement [ ELSE statement ]

    if ( !Statement_Inside_If( ans, type, if_do_once ) )
      return false ;

    else {
      return true ;
    } // else
  } // else if ( strcmp( gtemp, "if" ) == 0 )

  else if ( strcmp( gtemp, "while" ) == 0 ) { // WHILE '(' expression ')' statement
    if ( Statement_Inside_while( ans, type, while_do_once ) ) {
      return true ;
    } // if()
    else
      return false ;
  } // else if ( strcmp( gtemp, "while" ) == 0 )

  else if ( strcmp( gtemp, "do" ) == 0 ) { //  DO statement WHILE '(' expression ')' ';'
    dolen = gLen ;
    dolinenow = gLineNow ;

    gN_GT = true ;
    GetToken() ;
    if ( !Statement( ans, type, if_do_once, while_do_once ) ) return false ;
    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, "while" ) != 0 ) return false ;
    Statement_Inside_D0_while( ans, type, while_do_once, dolen, dolinenow ) ;

    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, ";" ) == 0 ) {
      gN_GT = true ;
      return true ;
    } // if ( strcmp( gtemp, ";" ) == 0 )
    else return false ;
  } // else if ( strcmp( gtemp, "do" ) == 0 )

  else if ( strcmp( gtemp, "{" ) == 0 ) { // compound_statement
    if ( !Compound_statement( ans, type, if_do_once, while_do_once ) ) return false ;
    else return true ;
  } // else if ( strcmp( gtemp, "{" ) == 0 )

  else if ( strcmp( gtemp, "cout" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( Cout() ) return true ;
    else return false ;
  } // else if ( strcmp( gtemp, "ListAllVariables" ) == 0 )

  else if ( strcmp( gtemp, "cin" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( Cin() ) return true ;
    else return false ;
  } // else if ( strcmp( gtemp, "ListAllVariables" ) == 0 )

  else if ( Expression( ans, type ) ) { // expression ';'
    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, ";" ) == 0 ) {
      gN_GT = true ;
      return true ;
    } // if ( strcmp( gtemp, ";" ) == 0 )
    else return false ;
  } // else if( Expression() )

  else return false ;
} // Statement()


bool Statement_Inside_If( Str100 &ans, Str100 &type, bool if_do_once ) {
  bool if_do_next ;
  bool else_do_next ;
  bool while_do_once ;
  bool tempg_if_not_do = g_if_not_do ;


  gN_GT = true ;
  GetToken() ;
  if ( strcmp( gtemp, "(" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;
  if ( !Expression( ans, type ) ) return false ;



  if ( strcmp( type, "BOOL" ) != 0 ) {
    gtype_error = true ;
    return false ;
  } // if()


  if ( strcmp( ans, "true" ) == 0 && if_do_once == true ) {
    if_do_next = true ;
    else_do_next = false ;
    g_if_not_do = true ;
    while_do_once = true ;
  } // if()

  else if ( strcmp( ans, "true" ) == 0 && if_do_once == false ) {
    if_do_next = false ;
    else_do_next = false ;
    g_if_not_do = false ;
    while_do_once = false ;
  } // if()

  else if ( strcmp( ans, "false" ) == 0 && if_do_once == true ) {
    if_do_next = false ;
    else_do_next = true ;
    g_if_not_do = false ;
    while_do_once = false ;
  } // if()

  else if ( if_do_once == false ) {
    if_do_next = false ;
    else_do_next = false ;
    g_if_not_do = false ;
    while_do_once = false ;
  } // if()




  if ( gN_GT ) GetToken() ;
  if ( strcmp( gtemp, ")" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;


  if ( !Statement( ans, type, if_do_next, while_do_once ) ) return false ;

  // g_if_not_do = true ;

  if ( gN_GT ) GetToken() ;

  if ( strcmp( gtemp, "else" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;

    if ( else_do_next == false ) {
      g_if_not_do = false ;
      while_do_once = false ;
    } // if()

    else if ( else_do_next == true ) {
      g_if_not_do = true ;
      while_do_once = true ;
    } // if()

    if ( !Statement( ans, type, else_do_next, while_do_once ) ) return false ;
    g_if_not_do = tempg_if_not_do ;
    return true ;
  } // if()



  else {
    g_if_not_do = tempg_if_not_do ;
    gN_GT = false ;
    return true ;
  } // else

} // Statement_Inside_If()

bool Statement_Inside_while( Str100 &ans, Str100 &type, bool while_do_once ) {
  int tempLen = gLen  ;
  int tempLineNow = gLineNow ;
  bool ansT_F = true ;
  bool if_do_once = false ;

  bool tempg_if_not_do = g_if_not_do ;

  while ( ansT_F ) {


    gLen = tempLen ;
    gLineNow = tempLineNow ;

    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "(" ) != 0 ) return false ;
    gN_GT = true ;
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ;



    if ( strcmp( type, "BOOL" ) != 0 ) {
      gtype_error = true ;
      return false ;
    } // if()

    if ( strcmp( ans, "true" ) == 0 ) ansT_F = true ;
    else ansT_F = false ;


    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;

    if ( while_do_once ) {
      if ( ansT_F ) {
        if_do_once = true ;
        while_do_once = true ;
        g_if_not_do = true ;
      } // if()

      else {
        if_do_once = false ;
        while_do_once = false ;
        g_if_not_do = false ;
      } // else
    } // if()

    else {
      ansT_F = false ;
      if_do_once = false ;
      while_do_once = false ;
      g_if_not_do = false ;
    } // else



    // Setanewtable() ;

    gN_GT = true ;
    GetToken() ;

    if ( !Statement( ans, type, if_do_once, while_do_once ) ) return false ;


  } // while()

  g_if_not_do = tempg_if_not_do ;
  return true ;
} // Statement_Inside_while()



bool Statement_Inside_D0_while( Str100 &ans, Str100 &type, bool while_do_once, int dolen, int dolinenow ) {
  int tempLen = gLen  ;
  int tempLineNow = gLineNow ;
  int outLen ;
  int outLineNow ;
  bool ansT_F = true ;
  bool if_do_once = false ;
  bool tempg_if_not_do = g_if_not_do ;

  while ( ansT_F ) {

    gLen = tempLen ;
    gLineNow = tempLineNow ;

    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "(" ) != 0 ) return false ;
    gN_GT = true ;
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ;



    if ( strcmp( type, "BOOL" ) != 0 ) {
      gtype_error = true ;
      return false ;
    } // if()

    if ( strcmp( ans, "true" ) == 0 ) ansT_F = true ;
    else ansT_F = false ;


    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;


    outLen = gLen ;
    outLineNow = gLineNow ;

    if ( while_do_once ) {
      if ( ansT_F ) {
        if_do_once = true ;
        while_do_once = true ;
        g_if_not_do = true ;
      } // if()

      else {
        if_do_once = false ;
        while_do_once = false ;
        g_if_not_do = false ;
      } // else
    } // if()

    else {
      ansT_F = false ;
      if_do_once = false ;
      while_do_once = false ;
      g_if_not_do = false ;
    } // else

    gLen = dolen ;
    gLineNow = dolinenow ;

    gN_GT = true ;
    GetToken() ;

    if ( !Statement( ans, type, if_do_once, while_do_once ) ) return false ;



  } // while()


  g_if_not_do = tempg_if_not_do ;

  gLen = outLen ;
  gLineNow = outLineNow ;

  return true ;
} // Statement_Inside_D0_while()

bool Expression( Str100 &ans, Str100 &type ) {
  if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
  if ( gN_GT ) GetToken() ; // 確定要不要拿
  if ( strcmp( gtemp, "," ) == 0 ||  strcmp( gtemp, "?" ) == 0 ) { // 看是不是Rest_of_expression
    if ( Rest_of_expression() ) return true ;
    else return false ;
  } // if ( Rest_of_expression() )
  else {
    gN_GT = false ; // 這邊還要再做確定
    return true ;
  } // else
} // Expression()

bool Rest_of_expression() {
  Str100 ans, type ;
  if ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, "," ) == 0 || strcmp( gtemp, "?" ) == 0 ) { // 看是不是Rest_of_expression
      if ( Rest_of_expression() ) return true ;
      else return false ;
    } // if (  strcmp( gtemp, "," ) == 0 ||  strcmp( gtemp, "?" ) == 0 )
    else {
      gN_GT = false ; // 沒用掉Token
      return true ;
    } // else
  } // if ( strcmp( gtemp, "," ) == 0 )

  else if ( strcmp( gtemp, "?" ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ; // 不是Basic_expression
    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, ":" ) != 0 ) return false ; // 不是:
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;

    if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, "," ) == 0 ||  strcmp( gtemp, "?" ) == 0 ) { // 看是不是Rest_of_expression
      if ( Rest_of_expression() ) return true ;
      else return false ;
    } // if (  strcmp( gtemp, "," ) == 0 ||  strcmp( gtemp, "?" ) == 0 )
    else {
      gN_GT = false ; // 沒用掉Token
      return true ;
    } // else
  } // else if ( strcmp( gtemp, "?" ) == 0 )

  else return false ;
} // Rest_of_expression()

bool Basic_expression( Str100 &ans, Str100 &type ) {
  Str100 temp ;
  Str100 temptype ;
  int pP_MM = 0 ;
  int signtype = 0 ;
  int tempsigntype = 0 ;

  if ( Is_Identifier() ) {
    if ( Rest_of_Identifier_started_basic_exp( ans, type, pP_MM ) ) {
      return true ;
    } // if ( Rest_of_Identifier_started_basic_exp( ans, type ) )
    else return false ;
  } // if ( Is_Identifier() )

  else if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    while ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
      if ( strcmp( gtemp, "++" ) == 0 ) pP_MM++ ;
      else if ( strcmp( gtemp, "--" ) == 0 ) pP_MM-- ;
      GetToken() ;
    } // while ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )

    if ( !Is_Identifier() ) return false ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    // GetToken() ;
    if ( Rest_of_Identifier_started_basic_exp( ans, type, pP_MM ) ) return true ;
    else return false ;
  } // else if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )

  else if ( Sign( signtype ) ) {
    tempsigntype = signtype ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    while ( Sign( signtype ) ) {
      tempsigntype = signtype ;
      GetToken() ;
    } // while ( Sign() )

    if ( Signed_basic_expression( ans, type, tempsigntype ) ) return true ;
    else return false ;
  } // else if ( Sign() )

  else if ( Is_Constant() ) {

    // //////////////////////////////////////////////
    Is_Constant_value( temp, temptype ) ;
    strcpy( ans, temp ) ;
    strcpy( type, temptype ) ;
    // ////////////////////////////////////////////////

    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) return true ;
    else return false ;
  } // else if ( Is_Constant() )

  else if ( strcmp( gtemp, "(" ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ;
    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) return true ;
    else return false ;
  } // else if ( strcmp( gtemp, "(" ) == 0 )

  else return false ;
} // Basic_expression()

bool Rest_of_Identifier_started_basic_exp( Str100 &ans, Str100 &type, int PP_MM ) {
  int signtype = 0 ;
  int assigntype = 0 ;
  int in_or_out = 0 ;
  int idex = -666 ;
  int tempnum = 0 ;
  int pP_MM_In = 0 ;
  int inside_ass = 0 ;
  int funtionlen, funtionline ;
  int templen, templine ;

  Str100 tempname ;
  Str100 temp ;

  gN_GT = true ;


  if ( gfirstinexpression ) {
    if ( !Check_Not_Function_Id() ) return false ;
    else in_or_out = 1 ;
  } // if ()

  else {
    if ( Check_Not_Function_Id() ) in_or_out = 1 ;
    else if ( InsideIDcheck() ) in_or_out = 2 ;
    else return false ;
  } // else



  strcpy( tempname, gtemp ) ;
  strcpy( gfunctionident, tempname ) ;

  GetToken() ;
  if ( strcmp( gtemp, "(" ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Is_Constant() || Sign( signtype ) || Is_Identifier() || strcmp( gtemp, "++" ) == 0 ||
         strcmp( gtemp, "--" ) == 0 || strcmp( gtemp, "(" ) == 0  ) { // 先判斷它到底
      if ( Actual_parameter_list() ) {
        if ( gN_GT ) GetToken() ;        // 會不會進去Actual_parameter_list()
      } // if ( Actual_parameter_list() )
      else return false ; // 如果真的進去了 那錯就是一定錯
    } // if( Is_Constant() || Sign() || Is_Identifier() || strcmp( gtemp, "++" ) == 0 )

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;


    Find_function_space( tempname, funtionlen, funtionline ) ;
    templine = gLineNow ; // 暫存目前在第幾行
    templen = gLen ; // 暫存目前在那一行的哪一格
    gLineNow = funtionline ;
    gLen = funtionlen ;
    Function_do( ans ) ;
    Function_ident_resit() ;


    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    gLineNow = templine ;
    gLen = templen ;
    GetToken() ;
    if ( !Rest_of_maybe_logical_OR_exp( ans, type ) ) return false ;
    return true ;
  } // if ( strcmp( gtemp, "(" ) == 0 )

  else {
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Expression( ans, type ) ) return false ; // 不是Expression
      sscanf( ans, "%d", &idex ) ;
      if ( gN_GT ) GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 ) return false ; // 不是]
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ; // 因為沒用過


    if ( PP_MM != 0 ) {
      GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;
      sscanf( ans, "%d", &tempnum ) ;
      tempnum = tempnum + PP_MM ;
      sprintf( temp, "%d", tempnum ) ;
      strcpy( ans, temp ) ;
      if ( g_if_not_do == true )
        Assignment_Ident( tempname, ans, type, idex, in_or_out ) ;
    } // if()




    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
      if ( strcmp( gtemp, "++" ) == 0 ) {
        pP_MM_In++ ;
      } // if()
      else pP_MM_In-- ;
      gN_GT = true ;
    } // if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )

    else gN_GT = false ; // 因為沒用過
    if ( gN_GT ) GetToken() ;
    if ( Assignment_operator( assigntype ) ) { // ( assignment_operator basic_expression )

      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression

      if ( g_if_not_do == true ) {
        Assignment_Ident( tempname, ans, type, idex, in_or_out ) ;
        if ( pP_MM_In != 0 ) {
          sscanf( ans, "%d", &tempnum ) ;
          tempnum = tempnum + pP_MM_In ;
          sprintf( temp, "%d", tempnum ) ;
          strcpy( ans, temp ) ;
          if ( g_if_not_do == true )
            Assignment_Ident( tempname, ans, type, idex, in_or_out ) ;
        } // if()
      } // if()

      else {
        if ( gtable[gtablenum].rangetail != NULL && in_or_out == 2 ) {
          for ( InformationInside temp = gtable[gtablenum].rangetail -> nexthead ; temp != NULL ;
                temp = temp -> next ) {
            if ( strcmp( temp -> linetoken, tempname ) == 0 ) {
              inside_ass = 1 ;
            } // if()
          } // for()

          if ( inside_ass == 1 )
            Assignment_Ident( tempname, ans, type, idex, in_or_out ) ;
        } // if()


      } // else()

      return true ;

    } // if ( Assignment_operator() )

    GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;

    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) {
      if ( pP_MM_In != 0 ) {
        sscanf( ans, "%d", &tempnum ) ;
        tempnum = tempnum + pP_MM_In ;
        sprintf( temp, "%d", tempnum ) ;
        strcpy( ans, temp ) ;
        if ( g_if_not_do == true )
          Assignment_Ident( tempname, ans, type, idex, in_or_out ) ;
      } // if()

      return true ;
    } // if()
    else return false ;
  } // else
} // Rest_of_Identifier_started_basic_exp()

bool Rest_of_PPMM_Identifier_started_basic_exp() {
  int signtype = 0 ;
  int assigntype = 0 ;
  Str100 ans, type ;
  if ( strcmp( gtemp, "(" ) == 0 ) {
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Is_Constant() || Sign( signtype ) || Is_Identifier() || strcmp( gtemp, "++" ) == 0 ||
         strcmp( gtemp, "--" ) == 0 || strcmp( gtemp, "(" ) == 0  ) { // 先判斷它到底
      if ( Actual_parameter_list() ) {
        if ( gN_GT ) GetToken() ;        // 會不會進去Actual_parameter_list()
      } // if ( Actual_parameter_list() )
      else return false ; // 如果真的進去了 那錯就是一定錯
    } // if( Is_Constant() || Sign() || Is_Identifier() || strcmp( gtemp, "++" ) == 0 )

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Rest_of_maybe_logical_OR_exp( ans, type ) ) return false ;
    return true ;
  } // if ( strcmp( gtemp, "(" ) == 0 )

  else {
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Expression( ans, type ) ) return false ; // 不是Expression
      if ( gN_GT ) GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 ) return false ; // 不是]
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ; // 因為沒用過
    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {




      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )
    else gN_GT = false ; // 因為沒用過
    if ( gN_GT ) GetToken() ;

    if ( Assignment_operator( assigntype ) ) { // ( assignment_operator basic_expression )
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
      return true ;
    } // if ( Assignment_operator() )

    else if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) return true ;

    else return false ;
  } // else
} // Rest_of_PPMM_Identifier_started_basic_exp()

bool Signed_basic_expression( Str100 &ans, Str100 &type, int symbolnum ) {
  int tempnum = 0 ;
  int where = 0 ;

  Str100 temp ;
  Str100 temptype ;
  if ( Is_Identifier() ) { // Identifier rest_of_Identifier_started_signed_basic_exp
    if ( Rest_of_Identifier_started_signed_basic_exp( ans, type, symbolnum ) ) return true ;
    else return false ;
  } // if ( Is_Identifier() )

  else if ( Is_Constant() ) { //  Constant rest_of_maybe_logical_OR_exp



    // //////////////////////////////////////////////
    Is_Constant_value( temp, temptype ) ;


    if ( symbolnum == 1 && strcmp( temptype, "INT" ) == 0 ) {
      sscanf( temp, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( temp, "%d", tempnum ) ;

      strcpy( ans, temp ) ;
      strcpy( type, temptype ) ;

    } // if ( symbolnum == 1 )

    else if ( symbolnum == 3 && strcmp( temptype, "BOOL" ) == 0 ) {
      if ( strcmp( temp, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( temp, "false" ) == 0 )
        strcpy( ans, "true" ) ;
      strcpy( type, temptype ) ;
    } // if ( symbolnum == 3 )

    else {
      strcpy( ans, temp ) ;
      strcpy( type, temptype ) ;
    } // else

    // cout << ans << "signed_basic_expression" << "\n" ;
    // ////////////////////////////////////////////////


    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) return true ;
    else return false ;
  } // else if ( Is_Constant() )

  else if ( strcmp( gtemp, "(" ) == 0 ) { // '(' expression ')' rest_of_maybe_logical_OR_exp
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ;


    if ( symbolnum == 1 && strcmp( type, "INT" ) == 0 ) {
      sscanf( ans, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( temp, "%d", tempnum ) ;

      strcpy( ans, temp ) ;

    } // if ( symbolnum == 1 )

    else if ( symbolnum == 3 && strcmp( type, "BOOL" ) == 0 ) {
      if ( strcmp( ans, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( ans, "false" ) == 0 )
        strcpy( ans, "true" ) ;
    } // if ( symbolnum == 3 )


    if ( gN_GT )  GetToken() ;
    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) {
      return true ;
    } // if()
    else return false ;
  } // else if ( strcmp( gtemp, "(" ) == 0 )

  else return false ;
} // Signed_basic_expression()

bool Rest_of_Identifier_started_signed_basic_exp( Str100 &ans, Str100 &type, int signtype ) {
  int sign = 0 ;
  int in_or_out = 0 ;
  int idex = -666 ;
  int tempnum = 0 ;
  Str100 tempname ;

  gN_GT = true ;
  if ( gfirstinexpression ) {
    if ( !Check_Not_Function_Id() ) return false ;
    else in_or_out = 1 ;
  } // if ()

  else {
    if ( Check_Not_Function_Id() ) in_or_out = 1 ;
    else if ( InsideIDcheck() ) in_or_out = 2 ;
    else return false ;
  } // else

  strcpy( tempname, gtemp ) ;




  GetToken() ;
  if ( strcmp( gtemp, "(" ) == 0 ) { // '(' [ actual_parameter_list ] ')'
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Is_Constant() || Sign( sign ) || Is_Identifier() || strcmp( gtemp, "++" ) == 0 ||
         strcmp( gtemp, "--" ) == 0 || strcmp( gtemp, "(" ) == 0  ) { // 先判斷它到底
      if ( Actual_parameter_list() ) {
        if ( gN_GT ) GetToken() ; // 會不會進去Actual_parameter_list()
      } // if ( Actual_parameter_list() )
      else return false ; // 如果真的進去了 那錯就是一定錯
    } // if ( Is_Constant() || Sign() || Is_Identifier() || strcmp( gtemp, "++" ) == 0 )

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( !Rest_of_maybe_logical_OR_exp( ans, type ) ) return false ;
    return true ;
  } // if ( strcmp( gtemp, "(" ) == 0 )

  else {
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Expression( ans, type ) ) return false ; // 不是Expression

      sscanf( ans, "%d", &idex ) ;

      if ( gN_GT ) GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 ) return false ; // 不是]
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ; // 因為沒用過
    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )
    else gN_GT = false ; // 因為沒用過
    if ( gN_GT ) GetToken() ;


    GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;

    if ( signtype == 1 && strcmp( type, "INT" ) == 0 ) {
      sscanf( ans, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( ans, "%d", tempnum ) ;
      strcpy( type, "INT" ) ;
    } // if ( symbolnum == 1 )


    else if ( signtype == 3 && strcmp( type, "BOOL" ) == 0 ) {
      if ( strcmp( ans, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( ans, "false" ) == 0 )
        strcpy( ans, "true" ) ;
      strcpy( type, "BOOL" ) ;
    } // if ( symbolnum == 3 )


    if ( Rest_of_maybe_logical_OR_exp( ans, type ) ) return true ;
    else return false ;
  } // else

} // Rest_of_Identifier_started_signed_basic_exp()

bool Actual_parameter_list() {
  Str100 ans, type ;

  memset( gfunctionident, '\0', sizeof(gfunctionident) );

  if ( !Non_comma_expression( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  // cout << gfunctionident << "Actual_parameter_list          " << ans << "\n" ;

  strcpy( gfunction[0].ident[gfunctionnumber].name, gfunctionident ) ;
  strcpy( gfunction[0].ident[gfunctionnumber].value, ans ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ;
    GetToken() ;

    memset( gfunctionident, '\0', sizeof(gfunctionident) );

    if ( !Non_comma_expression( ans, type ) ) return false ;
    // cout << gfunctionident << "Actual_parameter_list          " << ans << "\n" ;
    gfunctionnumber = gfunctionnumber + 1 ;
    strcpy( gfunction[0].ident[gfunctionnumber].name, gfunctionident ) ;
    strcpy( gfunction[0].ident[gfunctionnumber].value, ans ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "," ) == 0 )

  gN_GT = false ;

  gfunction[0].many = gfunctionnumber + 1 ;
  gfunctionnumber = 0 ;
  // gfunctionidentnow = gfunctionidentnow + 1 ;

  return true ;
} // Actual_parameter_list()

bool Non_comma_expression( Str100 &ans, Str100 &type ) {

  if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
  if ( gN_GT ) GetToken() ; // 確定要不要拿
  if ( strcmp( gtemp, "?" ) == 0 ) { // 要確定是否會不會進去
    if ( Rest_of_non_comma_expression() ) return true ; // Rest_of_non_comma_expression
    else return false ;
  } // if ( Rest_of_expression() )
  else {
    gN_GT = false ; // 這邊還要再做確定
    return true ;
  } // else
} // Non_comma_expression()

bool Rest_of_non_comma_expression() {
  Str100 ans, type ;
  if ( strcmp( gtemp, "?" ) != 0 ) return false ; // 不是?
  gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  GetToken() ;
  if ( !Expression( ans, type ) ) return false ; // 不是Basic_expression
  if ( gN_GT ) GetToken() ;
  if ( strcmp( gtemp, ":" ) != 0 ) return false ; // 不是:
  gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  GetToken() ;
  if ( !Basic_expression( ans, type ) ) return false ; // 不是Basic_expression
  if ( gN_GT ) GetToken() ;
  if ( strcmp( gtemp, "?" ) == 0 ) { // 看是否是Rest_of_non_comma_expression
    if ( Rest_of_non_comma_expression() ) return true ;
    else return false ;
  } // if (  strcmp( gtemp, "," ) == 0 ||  strcmp( gtemp, "?" ) == 0 )
  else {
    gN_GT = false ; // 沒用掉Token
    return true ;
  } // else
} // Rest_of_non_comma_expression()


// --------------------------------------------------------------------------

// --------------------第3部分-----------------------------------------------

bool Rest_of_maybe_logical_OR_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Rest_of_maybe_logical_AND_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "||" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_logical_AND_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "||" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_logical_OR_exp()

bool Maybe_logical_AND_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Maybe_bit_OR_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "&&" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_OR_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "&&" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Maybe_logical_AND_exp()

bool Rest_of_maybe_logical_AND_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Rest_of_maybe_bit_OR_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "&&" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_OR_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "&&" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_logical_AND_exp()

bool Maybe_bit_OR_exp( Str100 &ans, Str100 &type ) {
  if ( !Maybe_bit_ex_OR_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "|" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_ex_OR_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "|" ) == 0 )

  gN_GT = false ;
  return true ;
} // Maybe_bit_OR_exp()

bool Rest_of_maybe_bit_OR_exp( Str100 &ans, Str100 &type ) {
  if ( !Rest_of_maybe_bit_ex_OR_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "|" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_ex_OR_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "|" ) == 0 )

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_bit_OR_exp()

bool Maybe_bit_ex_OR_exp( Str100 &ans, Str100 &type ) {
  if ( !Maybe_bit_AND_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "^" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_AND_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "^" ) == 0 )

  gN_GT = false ;
  return true ;
} // Maybe_bit_ex_OR_exp()

bool Rest_of_maybe_bit_ex_OR_exp( Str100 &ans, Str100 &type ) {
  if ( !Rest_of_maybe_bit_AND_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "^" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_bit_AND_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "^" ) == 0 )

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_bit_ex_OR_exp()

bool Maybe_bit_AND_exp( Str100 &ans, Str100 &type ) {
  if ( !Maybe_equality_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "&" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_equality_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "&" ) == 0 )

  gN_GT = false ;
  return true ;
} // Maybe_bit_AND_exp()

bool Rest_of_maybe_bit_AND_exp( Str100 &ans, Str100 &type ) {
  if ( !Rest_of_maybe_equality_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "&" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_equality_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "&" ) == 0 )

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_bit_AND_exp()

bool Maybe_equality_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Maybe_relational_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "==" ) == 0 || strcmp( gtemp, "!=" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_relational_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "==" ) == 0 || strcmp( gtemp, "!=" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Maybe_equality_exp()

bool Rest_of_maybe_equality_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Rest_of_maybe_relational_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "==" ) == 0 || strcmp( gtemp, "!=" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_relational_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ( strcmp( gtemp, "==" ) == 0 || strcmp( gtemp, "!=" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_equality_exp()

bool Maybe_relational_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Maybe_shift_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "<" ) == 0 || strcmp( gtemp, ">" ) == 0 ||
          strcmp( gtemp, "<=" ) == 0 || strcmp( gtemp, ">=" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_shift_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while( strcmp( gtemp, "<" ) == 0 || strcmp( gtemp, ">" ) == 0 ||
    // strcmp( gtemp, "<=" ) == 0 || strcmp( gtemp, ">=" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Maybe_relational_exp()

bool Rest_of_maybe_relational_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Rest_of_maybe_shift_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "<" ) == 0 || strcmp( gtemp, ">" ) == 0 ||
          strcmp( gtemp, "<=" ) == 0 || strcmp( gtemp, ">=" ) == 0 ) {

    strcpy( symbol, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_shift_exp( ans, type ) ) return false ;

    if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
    strcpy( temp, answertemp ) ;
    strcpy( temptype, answertemptype ) ;

    if ( gN_GT == true ) GetToken() ;
  } // while ()

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_relational_exp()

bool Maybe_shift_exp( Str100 &ans, Str100 &type ) {
  if ( !Maybe_additive_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "<<<" ) == 0 || strcmp( gtemp, ">>>" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_additive_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while( strcmp( gtemp, "<<" ) == 0 || strcmp( gtemp, ">>" ) == 0 )

  gN_GT = false ;
  return true ;
} // Maybe_shift_exp()

bool Rest_of_maybe_shift_exp( Str100 &ans, Str100 &type ) {
  if ( !Rest_of_maybe_additive_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "<<<" ) == 0 || strcmp( gtemp, ">>>" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Maybe_additive_exp( ans, type ) ) return false ;
    if ( gN_GT == true ) GetToken() ;
  } // while( strcmp( gtemp, "<<" ) == 0 || strcmp( gtemp, ">>" ) == 0 )

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_shift_exp()

bool Maybe_additive_exp( Str100 &ans, Str100 &type ) {
  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  if ( !Maybe_mult_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "+" ) == 0 || strcmp( gtemp, "-" ) == 0 ) {

    if ( strcmp( gtemp, "+" ) == 0 ) {
      strcpy( symbol, "+" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Maybe_mult_exp( ans, type ) ) {
        return false ;
      } // if()

      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )


    if ( strcmp( gtemp, "-" ) == 0 ) {
      strcpy( symbol, "-" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Maybe_mult_exp( ans, type ) ) return false ;
      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )

    if ( gN_GT == true ) GetToken() ;
  } // while( strcmp( gtemp, "+" ) == 0 || strcmp( gtemp, "-" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;
  gN_GT = false ;
  return true ;
} // Maybe_additive_exp()

bool Rest_of_maybe_additive_exp( Str100 &ans, Str100 &type ) {

  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;
  if ( !Rest_of_maybe_mult_exp( ans, type ) ) return false ; // 不等於的話就不能跑到下面迴圈了
  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  if ( gN_GT == true ) GetToken() ; // 判斷要不要拿
  while ( strcmp( gtemp, "+" ) == 0 || strcmp( gtemp, "-" ) == 0 ) {

    if ( strcmp( gtemp, "+" ) == 0 ) {
      strcpy( symbol, "+" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Maybe_mult_exp( ans, type ) ) {
        return false ;
      } // if()

      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )


    if ( strcmp( gtemp, "-" ) == 0 ) {
      strcpy( symbol, "-" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Maybe_mult_exp( ans, type ) ) return false ;

      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )

    if ( gN_GT == true ) GetToken() ;

  } // while( strcmp( gtemp, "+" ) == 0 || strcmp( gtemp, "-" ) == 0 )


  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;

  gN_GT = false ;
  return true ;
} // Rest_of_maybe_additive_exp()

bool Maybe_mult_exp( Str100 &ans, Str100 &type )  {
  if ( Unary_exp( ans, type ) ) {
    if ( gN_GT ) GetToken() ;
    if ( Rest_of_maybe_mult_exp( ans, type ) ) {
      return true ;
    } // if()
    else return false ;
  } // if()

  else
    return false ;
} // Maybe_mult_exp()

bool Rest_of_maybe_mult_exp( Str100 &ans, Str100 &type ) {


  Str100 temp, answertemp ;
  Str100 temptype, answertemptype ;
  Str100 symbol ;

  strcpy( temp, ans ) ;
  strcpy( temptype, type ) ;

  while ( strcmp( gtemp, "*" ) == 0 || strcmp( gtemp, "/" ) == 0 ||
          strcmp( gtemp, "%" ) == 0 ) {

    if ( strcmp( gtemp, "*" ) == 0 ) {
      strcpy( symbol, "*" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Unary_exp( ans, type ) ) return false ;
      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )

    if ( strcmp( gtemp, "/" ) == 0 ) {
      strcpy( symbol, "/" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Unary_exp( ans, type ) ) return false ;
      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )

    if ( strcmp( gtemp, "%" ) == 0 ) {
      strcpy( symbol, "%" ) ;
      gN_GT = true ;
      GetToken() ;
      if ( !Unary_exp( ans, type ) ) return false ;
      if ( !Calculate( temp, ans, temptype, type, symbol, answertemp, answertemptype ) ) return false ;
      strcpy( temp, answertemp ) ;
      strcpy( temptype, answertemptype ) ;
    } // if ( strcmp( gtemp, "+" ) == 0 )

    if ( gN_GT == true ) GetToken() ;

  } // while ( strcmp( gToken, "*" ) == 0 || strcmp( gToken, "/" ) == 0 || strcmp( gToken, "%" ) == 0 )

  strcpy( ans, temp ) ;
  strcpy( type, temptype ) ;
  gN_GT = false ; // 出來迴圈代表沒用到
  return true ;
} // Rest_of_maybe_mult_exp()

// ------------------------------------------------------------------------------

bool Unary_exp( Str100 &ans, Str100 &type )  {
  int signtype = 0 ;
  int tempsigntype = 0 ;
  int in_or_out = 0 ;
  int idex = 0 ;
  Str100 tempname ;

  if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )  {
    gN_GT = true ;
    while ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
      GetToken() ;
    } // while ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )

    if ( !Is_Identifier() ) return false ;

    if ( gfirstinexpression ) {
      if ( !Check_Not_Function_Id() ) return false ;
      else in_or_out = 1 ;
    } // if ()

    else {
      if ( Check_Not_Function_Id() ) in_or_out = 1 ;
      else if ( InsideIDcheck() ) in_or_out = 2 ;
      else return false ;
    } // else

    strcpy( tempname, gtemp ) ;



    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( !Expression( ans, type ) ) return false ;

      sscanf( ans, "%d", &idex ) ;

      if ( gN_GT ) GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 ) return false ;
      gN_GT = true ;

      GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;


      return true ;
    } // if( strcmp( gtemp, "[" ) == 0 )

    else {
      gN_GT = false ;
      return true ;
    } // else

  } // if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )
  // cout << tempsigntype << "          " << gtemp << "\n" ;


  if ( Sign( signtype ) ) { // 是sign
    tempsigntype =  signtype ;
    gN_GT = true ;
    while ( Sign( signtype ) ) {
      tempsigntype =  signtype ;
      GetToken() ; // 要拿到不是sign為止
    } // while( Sign() )
  } // if( Sign() )

  // cout << tempsigntype << "          " << gtemp << "\n" ;

  if ( !Signed_unary_exp( ans, type, tempsigntype ) ) return false ; // 不是Signed_unary_exp
  return true ;
} // Unary_exp()

bool Signed_unary_exp( Str100 &ans, Str100 &type, int symbolnum ) {

  int tempnum = 0 ;
  int where = 0 ;
  Str100 temp ;
  Str100 temptype ;

  if ( Is_Identifier() )  { // 是不是Identifier
    if ( Rest_of_Identifier_started_unary_exp( ans, type, symbolnum ) ) return true ;

    else {   // 如果不是Rest_of_Identifier_started_unary_exp要設成false
      return false ;
    } // else
  } // if ()

  else if ( Is_Constant() ) {

    // //////////////////////////////////////////////
    Is_Constant_value( temp, temptype ) ;

    if ( symbolnum == 1 && strcmp( temptype, "INT" ) == 0 ) {
      sscanf( temp, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( temp, "%d", tempnum ) ;

      strcpy( ans, temp ) ;
      strcpy( type, temptype ) ;

    } // if ( symbolnum == 1 )

    else if ( symbolnum == 3 && strcmp( temptype, "BOOL" ) == 0 ) {
      if ( strcmp( temp, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( temp, "false" ) == 0 )
        strcpy( ans, "true" ) ;
      strcpy( type, temptype ) ;
    } // if ( symbolnum == 3 )

    else {
      strcpy( ans, temp ) ;
      strcpy( type, temptype ) ;
    } // else

    // ////////////////////////////////////////////////

    gN_GT = true ;
    return true ; // 是不是Constant
  } // else if ( Is_Constant() )

  else if ( strcmp( gtemp, "(" ) == 0 ) {   // ( Expression )
    gN_GT = true ;
    GetToken() ;
    if ( !Expression( ans, type ) ) return false ;

    if ( symbolnum == 1 && strcmp( type, "INT" ) == 0 ) {
      sscanf( ans, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( temp, "%d", tempnum ) ;

      strcpy( ans, temp ) ;

    } // if ( symbolnum == 1 )

    else if ( symbolnum == 3 && strcmp( type, "BOOL" ) == 0 ) {
      if ( strcmp( ans, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( ans, "false" ) == 0 )
        strcpy( ans, "true" ) ;
    } // if ( symbolnum == 3 )



    if ( gN_GT ) GetToken() ;
    if ( strcmp( gtemp, ")" ) != 0 ) return false ;
    gN_GT = true ;
    return true ;
  } // else if ()

  else return false ;
} // Signed_unary_exp()

bool Rest_of_Identifier_started_unary_exp( Str100 &ans, Str100 &type, int signtype ) {
  int sign = 0 ;
  int in_or_out = 0 ;
  int idex = -666 ;
  int tempnum = 0 ;
  Str100 tempname ;
  int funtionlen, funtionline ;
  int templen, templine ;


  gN_GT = true ;
  if ( gfirstinexpression ) {
    if ( !Check_Not_Function_Id() ) return false ;
    else in_or_out = 1 ;
  } // if ()

  else {
    if ( Check_Not_Function_Id() ) in_or_out = 1 ;
    else if ( InsideIDcheck() ) in_or_out = 2 ;
    else return false ;
  } // else

  strcpy( tempname, gtemp ) ;
  strcpy( gfunctionident, tempname ) ;

  GetToken() ;
  if ( strcmp( gtemp, "(" ) == 0 ) { // '(' [ actual_parameter_list ] ')'
    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    GetToken() ;
    if ( Is_Constant() || Sign( sign ) || Is_Identifier() || strcmp( gtemp, "++" ) == 0 ||
         strcmp( gtemp, "--" ) == 0 || strcmp( gtemp, "(" ) == 0  ) { // 先判斷它到底
      if ( Actual_parameter_list() ) {
        if ( gN_GT ) GetToken() ; // 會不會進去Actual_parameter_list()
      } // if ( Actual_parameter_list() )
      else return false ; // 如果真的進去了 那錯就是一定錯
    } // if ( Is_Constant() || Sign() || Is_Identifier() || strcmp( gtemp, "++" ) == 0 )

    if ( strcmp( gtemp, ")" ) != 0 ) return false ;


    GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;


    Find_function_space( tempname, funtionlen, funtionline ) ;
    templine = gLineNow ; // 暫存目前在第幾行
    templen = gLen ; // 暫存目前在那一行的哪一格
    gLineNow = funtionline ;
    gLen = funtionlen ;
    Function_do( ans ) ;
    Function_ident_resit() ;



    gLineNow = templine ;
    gLen = templen ;

    gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    return true ;
  } // if ( strcmp( gtemp, "(" ) == 0 )
  // ------------------------------------------------
  else {
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      GetToken() ;
      if ( !Expression( ans, type ) ) return false ; // 不是Expression

      sscanf( ans, "%d", &idex ) ;

      if ( gN_GT ) GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 ) return false ; // 不是]
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ; // 因為沒用過

    if ( gN_GT ) GetToken() ;

    if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 ) {
      gN_GT = true ; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    } // if ( strcmp( gtemp, "++" ) == 0 || strcmp( gtemp, "--" ) == 0 )
    else gN_GT = false ; // 因為沒用過



    GetValue_Ident( tempname, ans, type, idex, in_or_out ) ;
    if ( signtype == 1 && strcmp( type, "INT" ) == 0 ) {
      sscanf( ans, "%d", &tempnum ) ;
      tempnum = tempnum * -1 ;
      sprintf( ans, "%d", tempnum ) ;
      strcpy( type, "INT" ) ;
    } // if ( symbolnum == 1 )


    else if ( signtype == 3 && strcmp( type, "BOOL" ) == 0 ) {
      if ( strcmp( ans, "true" ) == 0 )
        strcpy( ans, "false" ) ;
      else if ( strcmp( ans, "false" ) == 0 )
        strcpy( ans, "true" ) ;
      strcpy( type, "BOOL" ) ;
    } // if ( symbolnum == 3 )

    return true ;
  } // else

} // Rest_of_Identifier_started_unary_exp()

bool Calculate( Str100 temp1, Str100 temp2, Str100 temp1_type, Str100 temp2_type,
                Str100 symbol, Str100 &answer, Str100 &type ) {
  int num1 = 0 ;
  int num2 = 0 ;

  // cout << temp1 << "  " << temp1_type << "    " << temp2 << "  " << temp2_type << "     "  <<   "\n" ;


  memset( answer, '\0', sizeof(answer) );
  memset( type, '\0', sizeof(type) );


  if ( strcmp( symbol, "+" ) == 0 ) {
    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      num1 = num1 + num2 ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      strcat( answer, temp1 ) ;
      strcat( answer, temp2 ) ;
      strcpy( type, "STRING" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      strcat( answer, temp1 ) ;
      strcat( answer, temp2 ) ;
      strcpy( type, "STRING" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      strcat( answer, temp1 ) ;
      strcat( answer, temp2 ) ;
      strcpy( type, "STRING" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      strcat( answer, temp1 ) ;
      strcat( answer, temp2 ) ;
      strcpy( type, "STRING" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      strcat( answer, temp1 ) ;
      strcat( answer, temp2 ) ;
      strcpy( type, "STRING" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num1 = num1 + ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num1 ) ;
      num1 = num1 + ( int ) temp1[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      num1 = ( int ) temp1[0] + ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else

  } // if( strcmp( symbol, "+" ) == 0 )

  else if ( strcmp( symbol, "-" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      num1 = num1 - num2 ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num1 = num1 - ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num1 ) ;
      num1 = ( int ) temp1[0] - num1  ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      num1 = ( int ) temp1[0] - ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "-" ) == 0 )

  else if ( strcmp( symbol, "*" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      num1 = num1 * num2 ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num1 = num1 * ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num1 ) ;
      num1 = ( int ) temp1[0] * num1  ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      num1 = ( int ) temp1[0] * ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "*" ) == 0 )

  else if ( strcmp( symbol, "/" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      num1 = num1 / num2 ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num1 = num1 / ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num1 ) ;
      num1 = ( int ) temp1[0] / num1  ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      num1 = ( int ) temp1[0] / ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "/" ) == 0 )

  else if ( strcmp( symbol, "%" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      num1 = num1 % num2 ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num1 = num1 % ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num1 ) ;
      num1 = ( int ) temp1[0] % num1  ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      num1 = ( int ) temp1[0] % ( int ) temp2[0] ;
      sprintf( answer, "%d", num1 ) ;
      strcpy( type, "INT" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "%" ) == 0 )

  else if ( strcmp( symbol, "<" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 < num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) < 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )



    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) < 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 < num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 < num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "<" ) == 0 )

  else if ( strcmp( symbol, ">" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 > num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) > 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) > 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 > num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 > num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, ">" ) == 0 )

  else if ( strcmp( symbol, "<=" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 <= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) <= 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) <= 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 <= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 <= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "<=" ) == 0 )

  else if ( strcmp( symbol, ">=" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 >= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) >= 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) >= 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 >= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 >= num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, ">=" ) == 0 )

  else if ( strcmp( symbol, "==" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 == num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    if ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) == 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) == 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 == num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 == num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "==" ) == 0 )

  else if ( strcmp( symbol, "!=" ) == 0 ) {

    if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      sscanf( temp2, "%d", &num2 ) ;
      if ( num1 != num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )


    else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) != 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )


    else if  ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      if ( strcmp( temp1, temp2 ) != 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if  ( strcmp( temp1_type, "STRING" ) == 0 && strcmp( temp2_type, "STRING" ) == 0 )

    else if ( strcmp( temp1_type, "CHAR" ) == 0 && strcmp( temp2_type, "INT" ) == 0 ) {
      sscanf( temp2, "%d", &num2 ) ;
      num1 = ( int ) temp1[0] ;
      if ( num1 != num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "CHAR" ) == 0 ) {
      sscanf( temp1, "%d", &num1 ) ;
      num2 = ( int ) temp2[0] ;
      if ( num1 != num2 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // else if ( strcmp( temp1_type, "INT" ) == 0 && strcmp( temp2_type, "INT" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "!=" ) == 0 )

  else if ( strcmp( symbol, "&&" ) == 0 ) {
    if ( strcmp( temp1_type, "BOOL" ) == 0 && strcmp( temp2_type, "BOOL" ) == 0 ) {
      if ( strcmp( temp1, "false" ) == 0 || strcmp( temp2, "false" ) == 0 )
        strcpy( answer, "false" ) ;
      else
        strcpy( answer, "true" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "BOOL" ) == 0 && strcmp( temp2_type, "BOOL" ) == 0 )
    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "&&" ) == 0 )

  else if ( strcmp( symbol, "||" ) == 0 ) {
    if ( strcmp( temp1_type, "BOOL" ) == 0 && strcmp( temp2_type, "BOOL" ) == 0 ) {
      if ( strcmp( temp1, "true" ) == 0 || strcmp( temp2, "true" ) == 0 )
        strcpy( answer, "true" ) ;
      else
        strcpy( answer, "false" ) ;
      strcpy( type, "BOOL" ) ;
      return true ;
    } // if ( strcmp( temp1_type, "BOOL" ) == 0 && strcmp( temp2_type, "BOOL" ) == 0 )

    else {
      gtype_error = true ;
      return false ;
    } // else
  } // else if ( strcmp( symbol, "||" ) == 0 )

} // Calculate()


void Is_Constant_value( Str100 & temp, Str100 temptype ) {
  Str100 cut ;
  memset( cut, '\0', sizeof(cut) );
  memset( temp, '\0', sizeof(temp) );
  memset( temptype, '\0', sizeof(temptype) );
  if ( strcmp( gtemp, "true" ) == 0 ) {
    strcpy( temp, "true" ) ;
    strcpy( temptype, "BOOL" ) ;
  } // if ( strcmp( gtemp, "true" ) == 0 )

  else if ( strcmp( gtemp, "false" ) == 0 ) {
    strcpy( temp, "false" ) ;
    strcpy( temptype, "BOOL" ) ;
  } // else if ( strcmp( gtemp, "false" ) == 0 )

  else if ( gtemp[0] == '"' ) {
    for ( int i = 1 ; i < strlen( gtemp ) - 1 ; i++ )
      cut[strlen( cut )] = gtemp[i] ;


    for ( int i = 0 ; i < strlen( cut ) ; i++ ) {
      if ( cut[i] == 92 ) {
        if ( cut[i+1] == 110 ) {
          strcat( temp, "\n" ) ;
          i = i + 2 ;
        } // if()
        else
          temp[strlen( temp )] = cut[i] ;
      } // if()

      else
        temp[strlen( temp )] = cut[i] ;


    } // for()

    strcpy( temptype, "STRING" ) ;
    /*
    if ( cut[0] == 92 && cut[1] == 110 ) {
      strcpy( temp, "\n" ) ;
      strcpy( temptype, "STRING" ) ;
    } // if ( strcmp( cut, "\n" ) == 0 )

    else {
      strcpy( temp, cut ) ;
      strcpy( temptype, "STRING" ) ;
    } // else
    */
  } // else if ( gtemp[0] == '"' )

  else if ( gtemp[0] == '\'' ) {

    for ( int i = 1 ; i < strlen( gtemp ) - 1 ; i++ )
      cut[strlen( cut )] = gtemp[i] ;

    if ( cut[0] == 92 && cut[1] == 110 ) {
      strcpy( temp, "\n" ) ;
      strcpy( temptype, "STRING" ) ;
    } // if ( strcmp( cut, "\n" ) == 0 )

    else {
      strcpy( temp, cut ) ;
      strcpy( temptype, "CHAR" ) ;
    } // else

  } // else if ( gtemp[0] == '\'' )

  else if ( gtemp[0] >= 48 && gtemp[0] <= 57 ) {
    strcpy( temp, gtemp ) ;
    strcpy( temptype, "INT" ) ;
  } // else if ( gtemp[0] >= 48 && gtemp[0] <= 57 )

} // Is_Constant_value()




void Assignment_Ident( Str100 tempname, Str100 ans, Str100 type, int idex, int in_or_out ) {

  // cout << in_or_out << "     " << tempname << ans << "    " << type << "\n" ;

  if ( in_or_out == 1 ) {
    for ( int i = 0 ; i < gtablenum ; i++ ) {
      if ( strcmp( tempname, gtable[i].name ) == 0 ) {
        if ( idex == -666 )
          strcpy( gtable[i].value, ans ) ;

        else {
          strcpy( gtable[i].arrary[idex].value, ans ) ;
        } // else

      } // if ( strcmp( gtemp, gtable[i].name ) == 0 )


    } // for( int i = 0 ; i < gtablenum ; i++ )
  } // if()

  else if ( in_or_out == 2 ) {
    for ( InformationRange temp = gtable[gtablenum].rangehead ; temp != NULL ; temp = temp -> down ) {
      for ( InformationInside temp2 = temp -> nexthead ; temp2 != NULL ; temp2 = temp2 -> next ) {
        if ( strcmp( temp2 -> linetoken, tempname ) == 0 ) {

          // cout << temp2 -> linetoken << "  "  << ans << "\n" ;

          strcpy( temp2 -> value, ans ) ;
          // strcpy( temp2 -> type, type ) ;
        } // if()
      } // for()
    } // for()
  } // else if ()

} // Assignment_Ident()


void GetValue_Ident( Str100 tempname, Str100 &ans, Str100 &type, int idex, int in_or_out ) {


  // cout << tempname << "       " << in_or_out << "\n" ;
  if ( in_or_out == 1 ) {
    for ( int i = 0 ; i < gtablenum ; i++ ) {
      if ( strcmp( tempname, gtable[i].name ) == 0 ) {
        if ( idex == -666 ) {
          strcpy( ans, gtable[i].value ) ;
          if ( strcmp( "bool", gtable[i].type ) == 0 ) {
            strcpy( type, "BOOL" ) ;
          } // if()
          else if ( strcmp( "int", gtable[i].type ) == 0 )
            strcpy( type, "INT" ) ;
          else if ( strcmp( "char", gtable[i].type ) == 0 )
            strcpy( type, "CHAR" ) ;
          else if ( strcmp( "string", gtable[i].type ) == 0 )
            strcpy( type, "STRING" ) ;
        } // if()

        else {
          strcpy( ans, gtable[i].arrary[idex].value ) ;

          if ( strcmp( "bool", gtable[i].type ) == 0 ) {
            strcpy( type, "BOOL" ) ;
          } // if()
          else if ( strcmp( "int", gtable[i].type ) == 0 )
            strcpy( type, "INT" ) ;
          else if ( strcmp( "char", gtable[i].type ) == 0 )
            strcpy( type, "CHAR" ) ;
          else if ( strcmp( "string", gtable[i].type ) == 0 )
            strcpy( type, "STRING" ) ;
        } // else

      } // if ( strcmp( gtemp, gtable[i].name ) == 0 )
    } // for( int i = 0 ; i < gtablenum ; i++ )
  } // if()

  else if ( in_or_out == 2 ) {
    for ( InformationRange temp = gtable[gtablenum].rangehead ; temp != NULL ; temp = temp -> down ) {
      for ( InformationInside temp2 = temp -> nexthead ; temp2 != NULL ; temp2 = temp2 -> next ) {
        if ( strcmp( temp2 -> linetoken, tempname ) == 0 ) {
          strcpy( ans, temp2 -> value ) ;
          if ( strcmp( "bool", temp2 -> type ) == 0 ) {
            strcpy( type, "BOOL" ) ;
          } // if()
          else if ( strcmp( "int", temp2 -> type ) == 0 )
            strcpy( type, "INT" ) ;
          else if ( strcmp( "char", temp2 -> type ) == 0 )
            strcpy( type, "CHAR" ) ;
          else if ( strcmp( "string", temp2 -> type ) == 0 )
            strcpy( type, "STRING" ) ;
        } // if()
      } // for()
    } // for()
  } // else if ()


} // GetValue_Ident()


void Copytable() {

  for ( int i = 0 ; i < gtablenum ; i++ ) {

    strcpy( gcopy_table[i].name, gtable[i].name ) ;
    strcpy( gcopy_table[i].type, gtable[i].type ) ;
    strcpy( gcopy_table[i].value, gtable[i].value ) ;
    gcopy_table[i].constantnum = gtable[i].constantnum ;
    gcopy_table[i].functionToF = gtable[i].functionToF ;
    gcopy_table[i].repeatTorF = gtable[i].repeatTorF ;


  } // for( int i = 0 ; i < gtablenum ; i++ )

} // Copytable()



void Cleanall() {
  for ( int i = 0 ; i < 1000 ; i++ ) {
    gtable[i].linehead = NULL ;
    gtable[i].linetail =  NULL ;
    gtable[i].rangehead = NULL ;
    gtable[i].rangetail =  NULL ;
  } // for()

} // Cleanall()



int Test() {
  if ( strcmp( gtemp, "int" ) == 0 )
    return 1 ;
  else if ( Is_Identifier() )
    return 2 ;

  else if ( Is_Constant() ) {
    if ( gtemp[0] == '"' ) return 4 ;
    else if ( gtemp[0] >= 48 && gtemp[0] <= 57 ) return 3 ;
  } // else if()

  else if ( strcmp( gtemp, "(" ) == 0 )
    return 5 ;

  else if ( strcmp( gtemp, ")" ) == 0 )
    return 6 ;

  else if ( strcmp( gtemp, "=" ) == 0 )
    return 7 ;

  else if ( strcmp( gtemp, "+" ) == 0 )
    return 8 ;

  else if ( strcmp( gtemp, "-" ) == 0 )
    return 9 ;

  else if ( strcmp( gtemp, "*" ) == 0 )
    return 10 ;

  else if ( strcmp( gtemp, "/" ) == 0 )
    return 11 ;

  else if ( strcmp( gtemp, "%" ) == 0 )
    return 12 ;
  else if ( strcmp( gtemp, "<<" ) == 0 )
    return 13 ;
  else if ( strcmp( gtemp, ";" ) == 0 )
    return 14 ;
  else if ( strcmp( gtemp, "," ) == 0 )
    return 15 ;
  else if ( strcmp( gtemp, "cout" ) == 0 )
    return 16 ;
  else if ( strcmp( gtemp, "Done" ) == 0 )
    return 100 ;

  else
    return 50 ;

} // Test()


bool Function_do( Str100 &ans ) {
  bool if_do_once, while_do_once ;
  int i = 0 ;
  Str100 type ;

  if ( g_if_not_do ) {
    if_do_once = true ;
    while_do_once = true ;
  } // if()

  else {
    if_do_once = false ;
    while_do_once = false ;
  } // else

  GetToken() ;

  if ( strcmp( gtemp, "(" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;
  if ( strcmp( gtemp, "void" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
  } // if ( strcmp( gtemp, "void" ) = 0 )
  else if ( Type_specifier() ) {
    Setanewtable() ;
    if ( Function_in_value() ) {
      if ( gN_GT ) GetToken() ;
    } // else if( Formal_parameter_list() )
    else return false ;
  } // else if ( Type_specifier() )

  if ( strcmp( gtemp, ")" ) != 0 ) return false ;
  gN_GT = true ;
  GetToken() ;
  gfirstinexpression = false ;


  if ( !Compound_statement( ans, type, if_do_once,  while_do_once ) ) return false ;

  Function_ident_ref() ;
  DeletTable() ;
  return true ;
} // Function_do()

bool Function_in_value() {
  Str100 name ;
  Str100 type ;
  int i = 0 ;
  int ref = 0 ;


  if ( !Type_specifier() ) return false ; // !!type_specifier這邊!! [ '&' ] Identifier [ '[' Constant ']' ]
  strcpy( type, gtemp ) ;
  gN_GT = true ;
  GetToken() ;
  if ( strcmp( gtemp, "&" ) == 0 ) { // 是不是[ '&' ]
    gN_GT = true ;
    GetToken() ;
    ref = 1 ;
  } // if( strcmp( gtemp, "&" ) == 0 )
  else {
    gN_GT = false ;
    ref = 0 ;
  } // else

  if ( !Is_Identifier() ) return false ;

  strcpy( name, gtemp ) ;

  gN_GT = true ;
  GetToken() ;

  if ( strcmp( gtemp, "[" ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Is_Constant() ) return false ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "]" ) != 0 ) return false ;
    gN_GT = true ;
  } // if ( strcmp( gtemp, "[" ) == 0 )
  else gN_GT = false ;

  GiveReg( name, type, i, ref ) ; // !!!!!!!!!!!!

  if ( gN_GT ) GetToken() ;
  while ( strcmp( gtemp, "," ) == 0 ) {
    gN_GT = true ;
    GetToken() ;
    if ( !Type_specifier() ) return false ;
    strcpy( type, gtemp ) ;
    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "&" ) == 0 ) { // 是不是[ '&' ]
      gN_GT = true ;
      GetToken() ;
      ref = 1 ;
    } // if( strcmp( gtemp, "&" ) == 0 )
    else {
      gN_GT = false ;
      ref = 0 ;
    } // else

    if ( !Is_Identifier() ) return false ;

    strcpy( name, gtemp ) ;

    gN_GT = true ;
    GetToken() ;
    if ( strcmp( gtemp, "[" ) == 0 ) {
      gN_GT = true ;
      GetToken() ;
      if ( !Is_Constant() ) return false ;
      gN_GT = true ;
      GetToken() ;
      if ( strcmp( gtemp, "]" ) != 0 )  return false ;
      gN_GT = true ;
    } // if ( strcmp( gtemp, "[" ) == 0 )
    else gN_GT = false ;

    i = i + 1 ;
    GiveReg( name, type, i, ref ) ; // !!!!!!!!!!!!

    if ( gN_GT ) GetToken() ;
  } // while ( strcmp( gtemp, "," ) == 0 )

  gN_GT = false ;
  return true ;
} // Function_in_value()



void GiveReg( Str100 name, Str100 type, int i, int ref ) {

  InformationInside temp = NULL ;
  temp = new Inside ;
  strcpy( temp -> linetoken, name ) ;
  strcpy( temp -> type, type ) ;
  strcpy( temp -> value, gfunction[0].ident[i].value ) ;

  // cout << temp -> linetoken << "      " << temp -> value << "\n" ;

  if ( ref == 1 )
    temp -> ref = 1 ;
  else
    temp -> ref = 0 ;
  temp -> next = NULL ;

  if ( gtable[gtablenum].rangetail -> nexthead == NULL ) {
    gtable[gtablenum].rangetail -> nexthead = temp ;
    gtable[gtablenum].rangetail -> nexttail = temp ;

  } // if ()

  else {
    gtable[gtablenum].rangetail -> nexttail -> next = temp ;
    gtable[gtablenum].rangetail -> nexttail = temp ;


  } // else


} // GiveReg()

void Find_function_space( Str100 name, int &len, int &Line ) {
  for ( int i = 0 ; i < gtablenum ; i++ ) {
    if ( strcmp( gtable[i].name, name ) == 0 ) {
      len = gtable[i].len ;
      Line = gtable[i].lineNow ;
    } // if( strcmp( gtable[gtablenum].name, name ) == 0 )
  } // for()


} // Find_function_space()


void Function_ident_ref() {
  int i = 0 ;
  int control = 0 ;
  if ( gtable[gtablenum].rangetail != NULL ) {

    for ( InformationInside temp = gtable[gtablenum].rangetail -> nexthead ; temp != NULL ;
          temp = temp -> next ) {
      if ( temp -> ref == 1 ) {
        strcpy( gfunction[0].ident[i].value, temp -> value ) ;
        gfunction[0].ident[i].ref = 1 ;
      } // if()

      i++ ;
    } // for()
  } // if()



  for ( int j = 0 ; j < gfunction[0].many ; j++ ) {

    for ( i = 0 ; i < gtablenum ; i++ ) {
      if ( strcmp( gtable[i].name, gfunction[0].ident[j].name ) == 0 ) {
        control = 1 ;
        if ( gfunction[0].ident[j].ref == 1 ) {
          strcpy( gtable[i].value, gfunction[0].ident[j].value ) ;
        } // if()
      } // if()
    } // for()

    if ( control == 0 ) {
      for ( InformationRange temp = gtable[gtablenum].rangehead ; temp != NULL ; temp = temp -> down ) {
        for ( InformationInside temp2 = temp -> nexthead ; temp2 != NULL ; temp2 = temp2 -> next ) {
          if ( strcmp( temp2 -> linetoken, gfunction[0].ident[j].name ) == 0 ) {
            if ( gfunction[0].ident[j].ref == 1 ) {

              strcpy( temp2 -> value, gfunction[0].ident[j].value ) ;
            } // if( gfunction[0].ident[j].ref == 1 )
          } // if( strcmp( temp2 -> linetoken, gfunction[0].ident[j].value ) == 0 )
        } // for()
      } // for()
    } // if( control == 0 )

    control = 0 ;
  } // for()

} // Function_ident_ref()


void Function_ident_resit() {

  for ( int i = 0 ; i < 50 ; i++ ) {
    strcpy( gfunction[0].ident[i].value, "" ) ;
    strcpy( gfunction[0].ident[i].name, "" ) ;
    gfunction[0].ident[i].ref = 0 ;
  } // for()

  gfunction[0].many = 0 ;
} // Function_ident_resit()
