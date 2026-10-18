.class public final enum Lcom/tencent/mna/base/report/d;
.super Ljava/lang/Enum;
.source "ReportTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mna/base/report/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BANDWIDTH:Lcom/tencent/mna/base/report/d;

.field public static final enum CACHED_TOUCH_UPLOAD:Lcom/tencent/mna/base/report/d;

.field public static final enum DIAGNOSE:Lcom/tencent/mna/base/report/d;

.field public static final enum END:Lcom/tencent/mna/base/report/d;

.field public static final enum NORMAL:Lcom/tencent/mna/base/report/d;

.field public static final enum PRECISE_KARTIN:Lcom/tencent/mna/base/report/d;

.field public static final enum PREDICT:Lcom/tencent/mna/base/report/d;

.field public static final enum QUERY_NETWORK:Lcom/tencent/mna/base/report/d;

.field public static final enum SMOBA_SPEED:Lcom/tencent/mna/base/report/d;

.field public static final enum START:Lcom/tencent/mna/base/report/d;

.field public static final enum WIFI:Lcom/tencent/mna/base/report/d;

.field private static final synthetic a:[Lcom/tencent/mna/base/report/d;


# instance fields
.field mIsRealTime:Z

.field mName:Ljava/lang/String;

.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/tencent/mna/base/report/d;

    const-string v1, "START"

    const/4 v2, 0x0

    const-string v3, "mna_start_p"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/tencent/mna/base/report/d;->START:Lcom/tencent/mna/base/report/d;

    .line 2
    new-instance v1, Lcom/tencent/mna/base/report/d;

    const-string v3, "NORMAL"

    const-string v5, "ino_newacc_p"

    const/4 v6, 0x2

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/tencent/mna/base/report/d;->NORMAL:Lcom/tencent/mna/base/report/d;

    .line 3
    new-instance v3, Lcom/tencent/mna/base/report/d;

    const-string v5, "PREDICT"

    const-string v7, "mna_predict_p"

    const/4 v8, 0x3

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/tencent/mna/base/report/d;->PREDICT:Lcom/tencent/mna/base/report/d;

    .line 4
    new-instance v5, Lcom/tencent/mna/base/report/d;

    const-string v7, "END"

    const-string v9, "mna_end_p"

    const/4 v10, 0x4

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/tencent/mna/base/report/d;->END:Lcom/tencent/mna/base/report/d;

    .line 5
    new-instance v7, Lcom/tencent/mna/base/report/d;

    const-string v9, "DIAGNOSE"

    const-string v11, "kartin_report"

    const/4 v12, 0x5

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/tencent/mna/base/report/d;->DIAGNOSE:Lcom/tencent/mna/base/report/d;

    .line 6
    new-instance v9, Lcom/tencent/mna/base/report/d;

    const-string v11, "BANDWIDTH"

    const-string v13, "mna_brand_p"

    const/4 v14, 0x6

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/tencent/mna/base/report/d;->BANDWIDTH:Lcom/tencent/mna/base/report/d;

    .line 7
    new-instance v11, Lcom/tencent/mna/base/report/d;

    const-string v13, "WIFI"

    const-string v15, "mna_wifisdk_p"

    const/4 v12, 0x7

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/tencent/mna/base/report/d;->WIFI:Lcom/tencent/mna/base/report/d;

    .line 8
    new-instance v13, Lcom/tencent/mna/base/report/d;

    const/16 v20, 0x8

    const/16 v21, 0x0

    const-string v17, "QUERY_NETWORK"

    const/16 v18, 0x7

    const-string v19, "mna_query_network_p"

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v21}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v13, Lcom/tencent/mna/base/report/d;->QUERY_NETWORK:Lcom/tencent/mna/base/report/d;

    .line 9
    new-instance v15, Lcom/tencent/mna/base/report/d;

    const/16 v26, 0x9

    const/16 v27, 0x0

    const-string v23, "PRECISE_KARTIN"

    const/16 v24, 0x8

    const-string v25, "ino_percise_kartin_p"

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v15, Lcom/tencent/mna/base/report/d;->PRECISE_KARTIN:Lcom/tencent/mna/base/report/d;

    .line 10
    new-instance v22, Lcom/tencent/mna/base/report/d;

    const/16 v20, 0xa

    const-string v17, "SMOBA_SPEED"

    const/16 v18, 0x9

    const-string v19, "ino_smoba_speed_p"

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v22, Lcom/tencent/mna/base/report/d;->SMOBA_SPEED:Lcom/tencent/mna/base/report/d;

    .line 11
    new-instance v16, Lcom/tencent/mna/base/report/d;

    const/16 v27, 0xb

    const/16 v28, 0x0

    const-string v24, "CACHED_TOUCH_UPLOAD"

    const/16 v25, 0xa

    const-string v26, "cached_touch_upload_p"

    move-object/from16 v23, v16

    invoke-direct/range {v23 .. v28}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v16, Lcom/tencent/mna/base/report/d;->CACHED_TOUCH_UPLOAD:Lcom/tencent/mna/base/report/d;

    const/16 v12, 0xb

    .line 12
    new-array v12, v12, [Lcom/tencent/mna/base/report/d;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    aput-object v11, v12, v14

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    const/16 v0, 0x9

    aput-object v22, v12, v0

    const/16 v0, 0xa

    aput-object v16, v12, v0

    sput-object v12, Lcom/tencent/mna/base/report/d;->a:[Lcom/tencent/mna/base/report/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/base/report/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/tencent/mna/base/report/d;->mName:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/tencent/mna/base/report/d;->mType:I

    .line 5
    iput-boolean p5, p0, Lcom/tencent/mna/base/report/d;->mIsRealTime:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/base/report/d;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/mna/base/report/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mna/base/report/d;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mna/base/report/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/base/report/d;->a:[Lcom/tencent/mna/base/report/d;

    invoke-virtual {v0}, [Lcom/tencent/mna/base/report/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/base/report/d;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/mna/base/report/d;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/mna/base/report/d;->mType:I

    return v0
.end method

.method public isRealTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/mna/base/report/d;->mIsRealTime:Z

    return v0
.end method
