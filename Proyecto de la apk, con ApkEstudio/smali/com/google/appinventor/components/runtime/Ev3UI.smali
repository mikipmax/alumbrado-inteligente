.class public Lcom/google/appinventor/components/runtime/Ev3UI;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3UI.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 41
    const-string v0, "Ev3UI"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public DrawCircle(IIIIZ)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "radius"    # I
    .param p5, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a circle on the screen."
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/16 v0, -0x7c

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 183
    const-string v7, "DrawCircle"

    .line 185
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    if-gez p4, :cond_2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 209
    :goto_0
    return-void

    .line 190
    :cond_2
    const-string v4, "ccccc"

    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p5, :cond_3

    const/16 v2, 0x18

    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v9

    const/4 v2, 0x2

    int-to-short v8, p2

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x3

    int-to-short v8, p3

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    aput-object v8, v5, v2

    int-to-short v2, p4

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v3

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 200
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 202
    const-string v4, "c"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 208
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0

    .end local v6    # "command":[B
    :cond_3
    move v2, v3

    .line 190
    goto :goto_1
.end method

.method public DrawIcon(IIIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "type"    # I
    .param p5, "no"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a built-in icon on screen."
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 81
    const-string v7, "DrawIcon"

    .line 83
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 108
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v4, "cccccc"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    int-to-short v3, p3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 99
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 101
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 107
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawLine(IIIII)V
    .locals 10
    .param p1, "color"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a line on the screen."
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 115
    const-string v7, "DrawLine"

    .line 117
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v4, "cccccc"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    int-to-short v2, p3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v9

    const/4 v2, 0x4

    int-to-short v3, p4

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    int-to-short v3, p5

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 133
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 135
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 141
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawPoint(III)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a point on the screen."
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 49
    const-string v7, "DrawPoint"

    .line 51
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v4, "cccc"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    int-to-short v2, p2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x3

    int-to-short v3, p3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 65
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 67
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 73
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method

.method public DrawRect(IIIIIZ)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a rectangle on the screen."
    .end annotation

    .prologue
    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 149
    const-string v7, "DrawRect"

    .line 151
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v4, "cccccc"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz p6, :cond_1

    const/16 v2, 0x9

    :goto_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    int-to-short v3, p2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    int-to-short v3, p3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    int-to-short v3, p4

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x5

    int-to-short v3, p5

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 167
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 169
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 175
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0

    .line 156
    .end local v6    # "command":[B
    :cond_1
    const/16 v2, 0xa

    goto :goto_1
.end method

.method public FillScreen(I)V
    .locals 9
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fill the screen with a color."
    .end annotation

    .prologue
    const/16 v0, -0x7c

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 216
    const-string v7, "FillScreen"

    .line 218
    .local v7, "functionName":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v7, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v4, "cccc"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    int-to-byte v2, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v5, v2

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 232
    .local v6, "command":[B
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 234
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v5, v1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 240
    invoke-virtual {p0, v7, v6, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    goto :goto_0
.end method
