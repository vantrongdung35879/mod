.class public final enum Lcom/tencent/qimei/report/beat/BeatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qimei/report/beat/BeatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIT:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum BACKGROUND:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum FORGROUND:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum INIT:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum NET_CHANGE:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum NORMAL:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final enum REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

.field public static final synthetic a:[Lcom/tencent/qimei/report/beat/BeatType;


# instance fields
.field private final controlBit:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/qimei/report/beat/BeatType;->NORMAL:Lcom/tencent/qimei/report/beat/BeatType;

    new-instance v1, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/tencent/qimei/report/beat/BeatType;->INIT:Lcom/tencent/qimei/report/beat/BeatType;

    new-instance v3, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v5, "REGISTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/tencent/qimei/report/beat/BeatType;->REGISTER:Lcom/tencent/qimei/report/beat/BeatType;

    new-instance v5, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v7, "AUDIT"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/tencent/qimei/report/beat/BeatType;->AUDIT:Lcom/tencent/qimei/report/beat/BeatType;

    new-instance v7, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v10, "NET_CHANGE"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v9, v11}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/tencent/qimei/report/beat/BeatType;->NET_CHANGE:Lcom/tencent/qimei/report/beat/BeatType;

    new-instance v10, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v11, "FORGROUND"

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12, v12, v2}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/tencent/qimei/report/beat/BeatType;->FORGROUND:Lcom/tencent/qimei/report/beat/BeatType;

    .line 2
    new-instance v11, Lcom/tencent/qimei/report/beat/BeatType;

    const-string v13, "BACKGROUND"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v2}, Lcom/tencent/qimei/report/beat/BeatType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/tencent/qimei/report/beat/BeatType;->BACKGROUND:Lcom/tencent/qimei/report/beat/BeatType;

    const/4 v13, 0x7

    .line 3
    new-array v13, v13, [Lcom/tencent/qimei/report/beat/BeatType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v9

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    .line 4
    sput-object v13, Lcom/tencent/qimei/report/beat/BeatType;->a:[Lcom/tencent/qimei/report/beat/BeatType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/qimei/report/beat/BeatType;->type:I

    .line 3
    iput p4, p0, Lcom/tencent/qimei/report/beat/BeatType;->controlBit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qimei/report/beat/BeatType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/qimei/report/beat/BeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qimei/report/beat/BeatType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qimei/report/beat/BeatType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/qimei/report/beat/BeatType;->a:[Lcom/tencent/qimei/report/beat/BeatType;

    invoke-virtual {v0}, [Lcom/tencent/qimei/report/beat/BeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qimei/report/beat/BeatType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/report/beat/BeatType;->controlBit:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/qimei/report/beat/BeatType;->type:I

    return v0
.end method
