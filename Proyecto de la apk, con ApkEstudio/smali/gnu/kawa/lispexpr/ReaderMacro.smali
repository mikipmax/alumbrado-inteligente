.class public Lgnu/kawa/lispexpr/ReaderMacro;
.super Lgnu/kawa/lispexpr/ReaderMisc;
.source "ReaderMacro.java"


# instance fields
.field procedure:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1
    .param p1, "procedure"    # Lgnu/mapping/Procedure;

    .prologue
    .line 23
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 24
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 25
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 1
    .param p1, "procedure"    # Lgnu/mapping/Procedure;
    .param p2, "nonTerminating"    # Z

    .prologue
    .line 16
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 18
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 19
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public getProcedure()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public isNonTerminating()Z
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderMacro;->kind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    .line 44
    .local v1, "reader":Ljava/io/Reader;
    :try_start_0
    iget-object v2, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-static {p2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 57
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 50
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "ex":Lgnu/text/SyntaxException;
    throw v0

    .line 54
    .end local v0    # "ex":Lgnu/text/SyntaxException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reader macro \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    goto :goto_0
.end method
