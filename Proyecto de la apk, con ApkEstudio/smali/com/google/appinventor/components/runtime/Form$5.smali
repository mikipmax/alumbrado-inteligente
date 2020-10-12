.class Lcom/google/appinventor/components/runtime/Form$5;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    # getter for: Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 908
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ReplayFormOrientation()V

    .line 910
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 915
    :goto_1
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$5;->this$0:Lcom/google/appinventor/components/runtime/Form;

    # getter for: Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$300(Lcom/google/appinventor/components/runtime/Form;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
