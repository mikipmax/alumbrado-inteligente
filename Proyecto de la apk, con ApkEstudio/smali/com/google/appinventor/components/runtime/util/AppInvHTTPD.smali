.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 61
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 62
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 63
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 64
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .prologue
    .line 425
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 426
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 427
    .local v4, "out":Ljava/io/FileOutputStream;
    const v5, 0x8000

    new-array v0, v5, [B

    .line 430
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_0

    .line 431
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 439
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 434
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 435
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private doPackageUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "inurl"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "inputKey"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 447
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 448
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 456
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 51
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .prologue
    .line 77
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 85
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v29

    .line 86
    .local v29, "myAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v29 .. v29}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    .line 87
    .local v19, "hostAddress":Ljava/lang/String;
    const-string v44, "127.0.0.1"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    .line 88
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Debug: hostAddress = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " while in secure mode, closing connection."

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\"}"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v36, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v19    # "hostAddress":Ljava/lang/String;
    .end local v29    # "myAddress":Ljava/net/InetAddress;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_0
    :goto_0
    return-object v36

    .line 101
    :cond_1
    const-string v44, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 105
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 106
    .local v10, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v44

    if-eqz v44, :cond_2

    .line 108
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 109
    .local v42, "value":Ljava/lang/String;
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "  HDR: \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' = \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v42    # "value":Ljava/lang/String;
    :cond_2
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "OK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3
    const-string v44, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_a

    .line 122
    const-string v44, "seq"

    const-string v45, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "inSeq":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 124
    .local v26, "iseq":I
    const-string v44, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "blockid":Ljava/lang/String;
    const-string v44, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "code":Ljava/lang/String;
    const-string v44, "mac"

    const-string v45, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 127
    .local v21, "inMac":Ljava/lang/String;
    const-string v9, ""

    .line 128
    .local v9, "compMac":Ljava/lang/String;
    move-object/from16 v23, v8

    .line 129
    .local v23, "input_code":Ljava/lang/String;
    sget-object v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v44, :cond_8

    .line 131
    :try_start_0
    const-string v44, "HmacSHA1"

    invoke-static/range {v44 .. v44}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 132
    .local v18, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v45, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 133
    .local v27, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 134
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v40

    .line 135
    .local v40, "tmpMac":[B
    new-instance v37, Ljava/lang/StringBuffer;

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    .local v37, "sb":Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 137
    .local v17, "formatter":Ljava/util/Formatter;
    move-object/from16 v5, v40

    .local v5, "arr$":[B
    array-length v0, v5

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    aget-byte v6, v5, v20

    .line 138
    .local v6, "b":B
    const-string v44, "%02x"

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 137
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 139
    .end local v6    # "b":B
    :cond_4
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 147
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Incoming Mac = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Computed Mac = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Incoming seq = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Computed seq = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    sget v46, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "blockid = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_5

    .line 153
    const-string v44, "AppInvHTTPD"

    const-string v45, "Hmac does not match"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "Invalid HMAC"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 140
    .end local v5    # "arr$":[B
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "tmpMac":[B
    :catch_0
    move-exception v10

    .line 141
    .local v10, "e":Ljava/lang/Exception;
    const-string v44, "AppInvHTTPD"

    const-string v45, "Error working with hmac"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "Exception working on HMAC"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 144
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "NOT"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 159
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v37    # "sb":Ljava/lang/StringBuffer;
    .restart local v40    # "tmpMac":[B
    :cond_5
    sget v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v44

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    sget v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v45, v26, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_6

    .line 160
    const-string v44, "AppInvHTTPD"

    const-string v45, "Seq does not match"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "Invalid Seq"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 168
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_6
    sget v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v45, v26, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_7

    .line 169
    const-string v44, "AppInvHTTPD"

    const-string v45, "Seq Fixup Invoked"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    add-int/lit8 v44, v26, 0x1

    sput v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 179
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " (begin "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " )))"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "To Eval: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents()V

    .line 188
    :try_start_1
    const-string v44, "#f"

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_9

    .line 189
    const-string v44, "AppInvHTTPD"

    const-string v45, "Skipping evaluation of #f"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_3
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const/16 v46, 0x0

    invoke-static/range {v46 .. v46}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v5    # "arr$":[B
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "tmpMac":[B
    :cond_8
    const-string v44, "AppInvHTTPD"

    const-string v45, "No HMAC Key"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "No HMAC Key"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 175
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 191
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v37    # "sb":Ljava/lang/StringBuffer;
    .restart local v40    # "tmpMac":[B
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 194
    :catch_1
    move-exception v12

    .line 195
    .local v12, "ex":Ljava/lang/Throwable;
    const-string v44, "AppInvHTTPD"

    const-string v45, "newblocks: Scheme Failure"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const-string v44, "BAD"

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v7, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const/16 v46, 0x0

    invoke-static/range {v46 .. v46}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_4

    .line 204
    .end local v5    # "arr$":[B
    .end local v7    # "blockid":Ljava/lang/String;
    .end local v8    # "code":Ljava/lang/String;
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v21    # "inMac":Ljava/lang/String;
    .end local v22    # "inSeq":Ljava/lang/String;
    .end local v23    # "input_code":Ljava/lang/String;
    .end local v26    # "iseq":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "tmpMac":[B
    :cond_a
    const-string v44, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_b

    .line 205
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_b
    const-string v44, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 214
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 215
    .local v32, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v31

    .line 217
    .local v31, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v44

    const/16 v45, 0x5

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_d

    .line 218
    const-string v44, "edu.mit.appinventor.aicompanion3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    invoke-static/range {v44 .. v45}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v24

    .line 225
    .local v24, "installer":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 226
    .local v43, "versionName":Ljava/lang/String;
    if-nez v24, :cond_c

    .line 227
    const-string v24, "Not Known"

    .line 231
    :cond_c
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "{\"version\" : \""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\", \"fingerprint\" : \""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    sget-object v47, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " \"installer\" : \""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\", \"package\" : \""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\", \"fqcn\" : true }"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 239
    .end local v24    # "installer":Ljava/lang/String;
    .end local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v43    # "versionName":Ljava/lang/String;
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_6
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 244
    const/16 v44, 0x1

    sput v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    move-object/from16 v44, v0

    new-instance v45, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual/range {v44 .. v45}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 220
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v24, "Not Known"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v24    # "installer":Ljava/lang/String;
    goto/16 :goto_5

    .line 235
    .end local v24    # "installer":Ljava/lang/String;
    .end local v31    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v32    # "packageName":Ljava/lang/String;
    :catch_2
    move-exception v30

    .line 236
    .local v30, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 237
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_6

    .line 252
    .end local v30    # "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_e
    const-string v44, "/_update"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_f

    const-string v44, "/_install"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_13

    .line 253
    :cond_f
    const-string v44, "url"

    const-string v45, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 254
    .local v41, "url":Ljava/lang/String;
    const-string v44, "mac"

    const-string v45, ""

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .restart local v21    # "inMac":Ljava/lang/String;
    const-string v44, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_12

    sget-object v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v44, :cond_12

    const-string v44, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_12

    .line 258
    :try_start_5
    new-instance v27, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v44, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v45, "RAW"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 259
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v44, "HmacSHA1"

    invoke-static/range {v44 .. v44}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v18

    .line 260
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 261
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->getBytes()[B

    move-result-object v44

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v40

    .line 262
    .restart local v40    # "tmpMac":[B
    new-instance v37, Ljava/lang/StringBuffer;

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 263
    .restart local v37    # "sb":Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Formatter;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 264
    .restart local v17    # "formatter":Ljava/util/Formatter;
    move-object/from16 v5, v40

    .restart local v5    # "arr$":[B
    array-length v0, v5

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    aget-byte v6, v5, v20

    .line 265
    .restart local v6    # "b":B
    const-string v44, "%02x"

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 264
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 266
    .end local v6    # "b":B
    :cond_10
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    .line 278
    .restart local v9    # "compMac":Ljava/lang/String;
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Incoming Mac (update) = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Computed Mac (update) = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_11

    .line 281
    const-string v44, "AppInvHTTPD"

    const-string v45, "Hmac does not match"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "Invalid HMAC (update)"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 284
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    .end local v5    # "arr$":[B
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "tmpMac":[B
    :catch_3
    move-exception v10

    .line 268
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v44, "AppInvHTTPD"

    const-string v45, "Error verifying update"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v45, v0

    const-string v46, "AppInvHTTPD"

    const/16 v47, 0x709

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "Exception working on HMAC for update"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 271
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v5    # "arr$":[B
    .restart local v9    # "compMac":Ljava/lang/String;
    .restart local v17    # "formatter":Ljava/util/Formatter;
    .restart local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v20    # "i$":I
    .restart local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v28    # "len$":I
    .restart local v37    # "sb":Ljava/lang/StringBuffer;
    .restart local v40    # "tmpMac":[B
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->doPackageUpdate(Ljava/lang/String;)V

    .line 292
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .end local v5    # "arr$":[B
    .end local v9    # "compMac":Ljava/lang/String;
    .end local v17    # "formatter":Ljava/util/Formatter;
    .end local v18    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v20    # "i$":I
    .end local v27    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v28    # "len$":I
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v37    # "sb":Ljava/lang/StringBuffer;
    .end local v40    # "tmpMac":[B
    :cond_12
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "application/json"

    const-string v46, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v21    # "inMac":Ljava/lang/String;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v41    # "url":Ljava/lang/String;
    :cond_13
    const-string v44, "/_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_15

    .line 308
    const-string v44, "package"

    const/16 v45, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 309
    .local v33, "packageapk":Ljava/lang/String;
    if-nez v33, :cond_14

    .line 310
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "NOT OK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_0

    .line 313
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_14
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v25, Landroid/content/Intent;

    const-string v44, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v25, "intent":Landroid/content/Intent;
    new-instance v44, Ljava/io/File;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v44 .. v44}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v34

    .line 316
    .local v34, "packageuri":Landroid/net/Uri;
    const-string v44, "application/vnd.android.package-archive"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 318
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "OK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v33    # "packageapk":Ljava/lang/String;
    .end local v34    # "packageuri":Landroid/net/Uri;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_15
    const-string v44, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1d

    .line 327
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 328
    .local v11, "error":Ljava/lang/Boolean;
    const-string v44, "content"

    const/16 v45, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 329
    .local v39, "tmpFileName":Ljava/lang/String;
    if-eqz v39, :cond_1b

    .line 330
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v39

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v14, "fileFrom":Ljava/io/File;
    const-string v44, "filename"

    const/16 v45, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 332
    .local v16, "filename":Ljava/lang/String;
    if-eqz v16, :cond_17

    .line 333
    const-string v44, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_16

    const-string v44, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_16

    const-string v44, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v44

    if-ltz v44, :cond_17

    .line 335
    :cond_16
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, " Ignoring invalid filename: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v16, 0x0

    .line 339
    :cond_17
    if-eqz v16, :cond_1a

    .line 341
    new-instance v15, Ljava/io/File;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "/"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v15, "fileTo":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v35

    .line 343
    .local v35, "parentFileTo":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v44

    if-nez v44, :cond_18

    .line 344
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->mkdirs()Z

    .line 346
    :cond_18
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v44

    if-nez v44, :cond_19

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 348
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 359
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v15    # "fileTo":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v35    # "parentFileTo":Ljava/io/File;
    :cond_19
    :goto_8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-eqz v44, :cond_1c

    .line 360
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "NOTOK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v14    # "fileFrom":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 352
    const-string v44, "AppInvHTTPD"

    const-string v45, "Received content without a file name!"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    .line 356
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    :cond_1b
    const-string v44, "AppInvHTTPD"

    const-string v45, "Received PUT without content."

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_8

    .line 367
    :cond_1c
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "OK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    .end local v11    # "error":Ljava/lang/Boolean;
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v39    # "tmpFileName":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 377
    .local v10, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v44

    if-eqz v44, :cond_1e

    .line 379
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 380
    .restart local v42    # "value":Ljava/lang/String;
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "  HDR: \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' = \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 383
    .end local v42    # "value":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 384
    :goto_a
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v44

    if-eqz v44, :cond_1f

    .line 386
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 387
    .restart local v42    # "value":Ljava/lang/String;
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "  PRM: \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' = \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 390
    .end local v42    # "value":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v10

    .line 391
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v44

    if-eqz v44, :cond_24

    .line 393
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 394
    .local v13, "fieldname":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 395
    .local v38, "tempLocation":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 396
    .restart local v16    # "filename":Ljava/lang/String;
    const-string v44, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_20

    const-string v44, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v44

    if-nez v44, :cond_20

    const-string v44, "../"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v44

    if-ltz v44, :cond_21

    .line 398
    :cond_20
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, " Ignoring invalid filename: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v16, 0x0

    .line 401
    :cond_21
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .restart local v14    # "fileFrom":Ljava/io/File;
    if-nez v16, :cond_23

    .line 403
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 411
    :cond_22
    :goto_b
    const-string v44, "AppInvHTTPD"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, " UPLOADED: \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\' was at \'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "\'"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v36, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v44, "200 OK"

    const-string v45, "text/plain"

    const-string v46, "OK"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    move-object/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .restart local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v44, "Access-Control-Allow-Origin"

    const-string v45, "*"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v44, "Access-Control-Allow-Headers"

    const-string v45, "origin, content-type"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v44, "Access-Control-Allow-Methods"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v44, "Allow"

    const-string v45, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    .end local v36    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_23
    new-instance v15, Ljava/io/File;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "/"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v15    # "fileTo":Ljava/io/File;
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v44

    if-nez v44, :cond_22

    .line 407
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 408
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto/16 :goto_b

    .line 420
    .end local v13    # "fieldname":Ljava/lang/String;
    .end local v14    # "fileFrom":Ljava/io/File;
    .end local v15    # "fileTo":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v38    # "tempLocation":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v44

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v36

    goto/16 :goto_0
.end method
