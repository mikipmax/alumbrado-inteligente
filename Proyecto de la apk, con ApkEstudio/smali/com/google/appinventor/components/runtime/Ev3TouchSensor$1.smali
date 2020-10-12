.class Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "Ev3TouchSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/16 v3, 0x32

    .line 58
    const-string v1, ""

    .line 60
    .local v1, "functionName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # invokes: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->getPressedValue(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "currentPressedValue":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    if-gez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I
    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 65
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .end local v0    # "currentPressedValue":I
    :goto_0
    return-void

    .line 69
    .restart local v0    # "currentPressedValue":I
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v2

    if-ge v2, v3, :cond_3

    .line 70
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->releasedEventEnabled:Z
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lt v0, v3, :cond_1

    .line 71
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    .line 77
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->savedPressedValue:I
    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)I

    .line 80
    .end local v0    # "currentPressedValue":I
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 73
    .restart local v0    # "currentPressedValue":I
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->pressedEventEnabled:Z
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ge v0, v3, :cond_1

    .line 74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    goto :goto_1
.end method
