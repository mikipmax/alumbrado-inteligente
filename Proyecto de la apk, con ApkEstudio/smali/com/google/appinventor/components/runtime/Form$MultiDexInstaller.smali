.class Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;
.super Landroid/os/AsyncTask;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiDexInstaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field ourForm:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/Form$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "form"    # [Lcom/google/appinventor/components/runtime/Form;

    .prologue
    const/4 v2, 0x1

    .line 226
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    .line 227
    const-string v0, "Form"

    const-string v1, "Doing Full MultiDex Install"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    .line 229
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, [Lcom/google/appinventor/components/runtime/Form;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Boolean;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 234
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
