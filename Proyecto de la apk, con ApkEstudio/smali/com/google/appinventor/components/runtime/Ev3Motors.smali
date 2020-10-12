.class public Lcom/google/appinventor/components/runtime/Ev3Motors;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Motors.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides both high- and low-level interfaces to a LEGO MINDSTORMS EV3 robot, with functions that can control the motors."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_MOTOR_PORTS:Ljava/lang/String; = "ABC"

.field private static final DEFAULT_WHEEL_DIAMETER:D = 4.32

.field private static final DELAY_MILLISECONDS:I = 0x32


# instance fields
.field private directionReversed:Z

.field private eventHandler:Landroid/os/Handler;

.field private ifReset:Z

.field private motorPortBitField:I

.field private previousValue:I

.field private regulationEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private stopBeforeDisconnect:Z

.field private tachoCountChangedEventEnabled:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide v4, 0x401147ae147ae148L    # 4.32

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    const-string v0, "Ev3Motors"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    iput v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    .line 43
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 44
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    .line 45
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 46
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 47
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 50
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    .line 51
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3Motors$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3Motors$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3Motors;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    const-string v0, "ABC"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->MotorPorts(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->StopBeforeDisconnect(Z)V

    .line 84
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->EnableSpeedRegulation(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->ReverseDirection(Z)V

    .line 86
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3Motors;->WheelDiameter(D)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->TachoCountChangedEventEnabled(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3Motors;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Ev3Motors;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3Motors;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/Ev3Motors;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->previousValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3Motors;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3Motors;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3Motors;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearOutputCount(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 706
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 709
    :cond_1
    const/16 v0, -0x4e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 716
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 717
    return-void
.end method

.method private getOutputCount(Ljava/lang/String;II)I
    .locals 12
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 659
    if-ltz p2, :cond_0

    if-gt p2, v5, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 663
    :cond_1
    add-int/lit8 v0, p3, -0x1

    xor-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, v0, 0x1

    .line 666
    packed-switch p3, :pswitch_data_0

    .line 684
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 668
    :pswitch_1
    const/4 v7, 0x0

    .line 687
    .local v7, "portNumber":I
    :goto_0
    const/16 v0, -0x4d

    const/4 v2, 0x4

    const-string v4, "ccg"

    new-array v5, v5, [Ljava/lang/Object;

    int-to-byte v10, p2

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v3

    int-to-byte v10, v7

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v5, v11

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 695
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 697
    .local v8, "reply":[B
    if-eqz v8, :cond_2

    array-length v0, v8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    aget-byte v0, v8, v3

    if-ne v0, v11, :cond_2

    .line 698
    const-string v0, "xi"

    invoke-static {v0, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v9

    .line 699
    .local v9, "values":[Ljava/lang/Object;
    aget-object v0, v9, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 701
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_2
    return v3

    .line 672
    .end local v6    # "command":[B
    .end local v7    # "portNumber":I
    .end local v8    # "reply":[B
    :pswitch_2
    const/4 v7, 0x1

    .line 673
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 676
    .end local v7    # "portNumber":I
    :pswitch_3
    const/4 v7, 0x2

    .line 677
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 680
    .end local v7    # "portNumber":I
    :pswitch_4
    const/4 v7, 0x3

    .line 681
    .restart local v7    # "portNumber":I
    goto :goto_0

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private isOneShotInteger(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 439
    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    xor-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputStepPower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 486
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 489
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 491
    const/16 v0, -0x54

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 503
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 504
    return-void

    .line 491
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 507
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 510
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 512
    const/16 v0, -0x52

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 524
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 525
    return-void

    .line 512
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputStepSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "tachoCounts"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 528
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/16 v0, -0xc8

    if-lt p5, v0, :cond_0

    const/16 v0, 0xc8

    if-le p5, v0, :cond_1

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 531
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 533
    const/16 v0, -0x50

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 544
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 545
    return-void

    .line 533
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimePower(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 548
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 551
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 553
    const/16 v0, -0x53

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 565
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 566
    return-void

    .line 553
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "step1"    # I
    .param p6, "step2"    # I
    .param p7, "step3"    # I
    .param p8, "brake"    # Z

    .prologue
    .line 569
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-ltz p5, :cond_0

    if-ltz p6, :cond_0

    if-gez p7, :cond_1

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 572
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 574
    const/16 v0, -0x51

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ccccccc"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x6

    if-eqz p8, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 586
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 587
    return-void

    .line 574
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private outputTimeSync(Ljava/lang/String;IIIIIZ)V
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I
    .param p5, "turnRatio"    # I
    .param p6, "milliseconds"    # I
    .param p7, "brake"    # Z

    .prologue
    .line 590
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    if-gez p6, :cond_1

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 593
    :cond_1
    const/16 v0, -0x64

    const/16 v1, 0x64

    invoke-direct {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 595
    const/16 v0, -0x4f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "cccccc"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    int-to-byte v8, p4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x3

    int-to-short v8, p5

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v8, 0x5

    if-eqz p7, :cond_2

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 606
    .local v6, "command":[B
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 607
    return-void

    .line 595
    .end local v6    # "command":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private resetOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 443
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 445
    :cond_1
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->ifReset:Z

    .line 446
    const/16 v0, -0x5e

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 453
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 454
    return-void
.end method

.method private roundValue(III)I
    .locals 0
    .param p1, "value"    # I
    .param p2, "minimum"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 435
    if-ge p1, p2, :cond_0

    .end local p2    # "minimum":I
    :goto_0
    return p2

    .restart local p2    # "minimum":I
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private setOutputDirection(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "direction"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 610
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-gt p3, v0, :cond_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_0

    if-le p4, v3, :cond_1

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 613
    :cond_1
    const/16 v0, -0x59

    const-string v4, "ccc"

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    int-to-byte v3, p4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 621
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 622
    return-void
.end method

.method private setOutputPower(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "power"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 642
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 645
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 647
    const/16 v0, -0x5c

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 655
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 656
    return-void
.end method

.method private setOutputSpeed(Ljava/lang/String;III)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "speed"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 625
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 628
    :cond_1
    const/16 v0, -0x64

    const/16 v2, 0x64

    invoke-direct {p0, p4, v0, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->roundValue(III)I

    move-result p4

    .line 630
    const/16 v0, -0x5b

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    int-to-byte v3, p4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 638
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 639
    return-void
.end method

.method private startOutput(Ljava/lang/String;II)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I

    .prologue
    const/4 v1, 0x0

    .line 457
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 460
    :cond_1
    const/16 v0, -0x5a

    const-string v4, "cc"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    int-to-byte v2, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 467
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 468
    return-void
.end method

.method private stopOutput(Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "nos"    # I
    .param p4, "useBrake"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 471
    if-ltz p2, :cond_0

    if-gt p2, v3, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0xf

    if-le p3, v0, :cond_1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 474
    :cond_1
    const/16 v0, -0x5d

    const-string v4, "ccc"

    new-array v5, v3, [Ljava/lang/Object;

    int-to-byte v3, p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    :goto_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 482
    .local v6, "command":[B
    invoke-virtual {p0, p1, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 483
    return-void

    .end local v6    # "command":[B
    :cond_2
    move v2, v1

    .line 474
    goto :goto_0
.end method


# virtual methods
.method public EnableSpeedRegulation(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    .line 168
    return-void
.end method

.method public EnableSpeedRegulation()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The robot adjusts the power to maintain the speed if speed regulation is enabled."
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    return v0
.end method

.method public GetTachoCount()I
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current tacho count."
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string v1, "GetTachoCount"

    .line 419
    .local v1, "functionName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->getOutputCount(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    :goto_0
    return v2

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, p0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public MotorPorts()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that the motors are connected to. The ports are specified by a sequence of port letters."
        userVisible = false
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->bitFieldToMotorPortLetters(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MotorPorts(Ljava/lang/String;)V
    .locals 6
    .param p1, "motorPortLetters"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ABC"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 107
    const-string v1, "MotorPorts"

    .line 109
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortLettersToBitField(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc20

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ResetTachoCount()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the current tacho count to zero."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 404
    const-string v1, "ResetTachoCount"

    .line 406
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->clearOutputCount(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ReverseDirection(Z)V
    .locals 7
    .param p1, "reversed"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 142
    const-string v1, "ReverseDirection"

    .line 144
    .local v1, "functionName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 145
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 144
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, p0, v1, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public ReverseDirection()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "It specifies if the direction of the motors is reversed."
    .end annotation

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    return v0
.end method

.method public RotateInDistance(IDZ)V
    .locals 12
    .param p1, "power"    # I
    .param p2, "distance"    # D
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a distance."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 274
    const-string v1, "RotateInDistance"

    .line 275
    .local v1, "functionName":Ljava/lang/String;
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 278
    .local v6, "tachoCounts":I
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v9

    .line 283
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInDuration(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 258
    const-string v1, "RotateInDuration"

    .line 260
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 261
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimePower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v9

    .line 265
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateInTachoCounts(IIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 242
    const-string v1, "RotateInTachoCounts"

    .line 244
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepPower(Ljava/lang/String;IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v9

    .line 249
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateIndefinitely(I)V
    .locals 6
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 224
    const-string v1, "RotateIndefinitely"

    .line 226
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->regulationEnabled:Z

    if-eqz v2, :cond_0

    .line 227
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputPower(Ljava/lang/String;III)V

    .line 231
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Ev3Motors;->startOutput(Ljava/lang/String;II)V

    .line 235
    :goto_1
    return-void

    .line 229
    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public RotateSyncInDistance(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "distance"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed for a distance in cm."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 313
    const-string v1, "RotateSyncInDuration"

    .line 314
    .local v1, "functionName":Ljava/lang/String;
    int-to-double v2, p2

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    div-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v6, v2

    .line 318
    .local v6, "tachoCounts":I
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 319
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    move-exception v9

    .line 326
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInDuration(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "milliseconds"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a period of time."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 335
    const-string v1, "RotateSyncInDuration"

    .line 339
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputTimeSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v9

    .line 347
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncInTachoCounts(IIIZ)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "tachoCounts"    # I
    .param p3, "turnRatio"    # I
    .param p4, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the motors at the same speed in a number of tacho counts."
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 356
    const-string v1, "RotateSyncInTachoCounts"

    .line 360
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSpeed(Ljava/lang/String;IIIIIIZ)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v9

    .line 368
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public RotateSyncIndefinitely(II)V
    .locals 11
    .param p1, "power"    # I
    .param p2, "turnRatio"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to rotate the motors at the same speed."
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 292
    const-string v1, "RotateSyncIndefinitely"

    .line 296
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    if-eqz v0, :cond_0

    .line 297
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3Motors;->isOneShotInteger(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputSpeed(Ljava/lang/String;III)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Ev3Motors;->outputStepSync(Ljava/lang/String;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v8

    .line 304
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Stop(Z)V
    .locals 6
    .param p1, "useBrake"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the motors of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 377
    const-string v1, "Stop"

    .line 379
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .param p1, "stopBeforeDisconnect"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    .line 198
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the motor before disconnecting."
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TachoCountChanged(I)V
    .locals 4
    .param p1, "tachoCount"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the tacho count has changed."
    .end annotation

    .prologue
    .line 431
    const-string v0, "TachoCountChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method public TachoCountChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    .line 217
    return-void
.end method

.method public TachoCountChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the TachoCountChanged event should fire when the angle is changed."
    .end annotation

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->tachoCountChangedEventEnabled:Z

    return v0
.end method

.method public ToggleDirection()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the direction of motors."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 390
    const-string v1, "ToggleDirection"

    .line 392
    .local v1, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v6, 0x0

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Ev3Motors;->setOutputDirection(Ljava/lang/String;III)V

    .line 393
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->directionReversed:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 393
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1f

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, p0, v1, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public WheelDiameter()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels attached on the motors in centimeters."
        userVisible = false
    .end annotation

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    return-wide v0
.end method

.method public WheelDiameter(D)V
    .locals 1
    .param p1, "diameter"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->wheelDiameter:D

    .line 123
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 7
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 721
    const-string v1, "beforeDisconnect"

    .line 722
    .local v1, "functionName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopBeforeDisconnect:Z

    if-eqz v2, :cond_0

    .line 724
    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->motorPortBitField:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3Motors;->stopOutput(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Motors;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
