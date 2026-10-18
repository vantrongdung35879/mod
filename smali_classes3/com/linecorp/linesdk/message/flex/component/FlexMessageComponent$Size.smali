.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
.super Ljava/lang/Enum;
.source "FlexMessageComponent.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Stringable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;",
        ">;",
        "Lcom/linecorp/linesdk/message/Stringable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum FULL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XL5:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field public static final enum XXS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 108
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string/jumbo v1, "xxs"

    const-string v2, "XXS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XXS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 109
    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string/jumbo v2, "xs"

    const-string v4, "XS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 110
    new-instance v2, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v4, "sm"

    const-string v6, "SM"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 111
    new-instance v4, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v6, "md"

    const-string v8, "MD"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 112
    new-instance v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v8, "lg"

    const-string v10, "LG"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 113
    new-instance v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string/jumbo v10, "xl"

    const-string v12, "XL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 114
    new-instance v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string/jumbo v12, "xxl"

    const-string v14, "XXL"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 115
    new-instance v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v14, "3xl"

    const-string v15, "XL3"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL3:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 116
    new-instance v14, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "4xl"

    const-string v13, "XL4"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL4:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 117
    new-instance v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "5xl"

    const-string v11, "XL5"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->XL5:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 118
    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const-string v15, "full"

    const-string v9, "FULL"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->FULL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const/16 v9, 0xb

    .line 107
    new-array v9, v9, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    aput-object v11, v9, v7

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

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

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 1

    .line 107
    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .locals 1

    .line 107
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->value:Ljava/lang/String;

    return-object v0
.end method
