.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
.super Ljava/lang/Enum;
.source "FlexMessageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_16x9:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1_51x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1_91x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x2:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_1x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_20x13:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_2x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_3x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_3x4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_4x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field public static final enum RATIO_9x16:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 148
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v1, "1:1"

    const-string v2, "RATIO_1x1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 149
    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v2, "1.51:1"

    const-string v4, "RATIO_1_51x1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1_51x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 150
    new-instance v2, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v4, "1.91:1"

    const-string v6, "RATIO_1_91x1"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1_91x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 151
    new-instance v4, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v6, "4:3"

    const-string v8, "RATIO_4x3"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_4x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 152
    new-instance v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v8, "16:9"

    const-string v10, "RATIO_16x9"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_16x9:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 153
    new-instance v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v10, "20:13"

    const-string v12, "RATIO_20x13"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_20x13:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 154
    new-instance v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v12, "2:1"

    const-string v14, "RATIO_2x1"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_2x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 155
    new-instance v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v14, "3:1"

    const-string v15, "RATIO_3x1"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_3x1:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 156
    new-instance v14, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "3:4"

    const-string v13, "RATIO_3x4"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_3x4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 157
    new-instance v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "9:16"

    const-string v11, "RATIO_9x16"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_9x16:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 158
    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "1:2"

    const-string v9, "RATIO_1x2"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x2:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 159
    new-instance v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const-string v15, "1:3"

    const-string v7, "RATIO_1x3"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->RATIO_1x3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    const/16 v7, 0xc

    .line 147
    new-array v7, v7, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    aput-object v0, v7, v3

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    aput-object v9, v7, v5

    sput-object v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 1

    .line 147
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .locals 1

    .line 147
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->value:Ljava/lang/String;

    return-object v0
.end method
