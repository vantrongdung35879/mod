.class public final enum Lcom/tencent/tme/live/p2/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tme/live/p2/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/tencent/tme/live/p2/l;

.field public static final enum c:Lcom/tencent/tme/live/p2/l;

.field public static final enum d:Lcom/tencent/tme/live/p2/l;

.field public static final enum e:Lcom/tencent/tme/live/p2/l;

.field public static final enum f:Lcom/tencent/tme/live/p2/l;

.field public static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/tme/live/p2/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic h:[Lcom/tencent/tme/live/p2/l;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/tencent/tme/live/p2/l;

    const-string v1, "FILTER_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/tme/live/p2/l;->b:Lcom/tencent/tme/live/p2/l;

    new-instance v1, Lcom/tencent/tme/live/p2/l;

    const-string v3, "FILTER_SUB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/tme/live/p2/l;->c:Lcom/tencent/tme/live/p2/l;

    new-instance v3, Lcom/tencent/tme/live/p2/l;

    const-string v5, "FILTER_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tencent/tme/live/p2/l;->d:Lcom/tencent/tme/live/p2/l;

    new-instance v5, Lcom/tencent/tme/live/p2/l;

    const-string v7, "FILTER_AVERAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tencent/tme/live/p2/l;->e:Lcom/tencent/tme/live/p2/l;

    new-instance v7, Lcom/tencent/tme/live/p2/l;

    const-string v9, "FILTER_PAETH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tencent/tme/live/p2/l;->f:Lcom/tencent/tme/live/p2/l;

    new-instance v9, Lcom/tencent/tme/live/p2/l;

    const/4 v11, -0x1

    const-string v12, "FILTER_DEFAULT"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/tencent/tme/live/p2/l;

    const-string v12, "FILTER_AGGRESSIVE"

    const/4 v14, 0x6

    const/4 v15, -0x2

    invoke-direct {v11, v12, v14, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/tencent/tme/live/p2/l;

    const-string v14, "FILTER_VERYAGGRESSIVE"

    const/4 v13, 0x7

    const/4 v10, -0x4

    invoke-direct {v12, v14, v13, v10}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/tencent/tme/live/p2/l;

    const-string v13, "FILTER_ADAPTIVE_FULL"

    const/16 v8, 0x8

    invoke-direct {v14, v13, v8, v10}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/tencent/tme/live/p2/l;

    const/4 v13, -0x3

    const-string v8, "FILTER_ADAPTIVE_MEDIUM"

    const/16 v6, 0x9

    invoke-direct {v10, v8, v6, v13}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/tencent/tme/live/p2/l;

    const-string v13, "FILTER_ADAPTIVE_FAST"

    const/16 v6, 0xa

    invoke-direct {v8, v13, v6, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/tencent/tme/live/p2/l;

    const/16 v15, -0xa

    const-string v6, "FILTER_SUPER_ADAPTIVE"

    const/16 v4, 0xb

    invoke-direct {v13, v6, v4, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/tencent/tme/live/p2/l;

    const/16 v15, -0x28

    const-string v4, "FILTER_PRESERVE"

    const/16 v2, 0xc

    invoke-direct {v6, v4, v2, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/tencent/tme/live/p2/l;

    const/16 v15, -0x32

    const-string v2, "FILTER_CYCLIC"

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v4, v2, v6, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/tencent/tme/live/p2/l;

    const/16 v15, -0x64

    const-string v6, "FILTER_UNKNOWN"

    move-object/from16 v17, v4

    const/16 v4, 0xe

    invoke-direct {v2, v6, v4, v15}, Lcom/tencent/tme/live/p2/l;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    new-array v6, v6, [Lcom/tencent/tme/live/p2/l;

    const/4 v15, 0x0

    aput-object v0, v6, v15

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v12, v6, v0

    const/16 v0, 0x8

    aput-object v14, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v13, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lcom/tencent/tme/live/p2/l;->h:[Lcom/tencent/tme/live/p2/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tme/live/p2/l;->g:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/tme/live/p2/l;->values()[Lcom/tencent/tme/live/p2/l;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/tencent/tme/live/p2/l;->g:Ljava/util/HashMap;

    iget v5, v3, Lcom/tencent/tme/live/p2/l;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/tme/live/p2/l;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tme/live/p2/l;
    .locals 1

    const-class v0, Lcom/tencent/tme/live/p2/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tme/live/p2/l;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tme/live/p2/l;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/p2/l;->h:[Lcom/tencent/tme/live/p2/l;

    invoke-virtual {v0}, [Lcom/tencent/tme/live/p2/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tme/live/p2/l;

    return-object v0
.end method
