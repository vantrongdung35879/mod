.class public final enum Lcom/ihoc/mgpa/vendor/utils/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihoc/mgpa/vendor/utils/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ihoc/mgpa/vendor/utils/c;

.field public static final enum b:Lcom/ihoc/mgpa/vendor/utils/c;

.field public static final enum c:Lcom/ihoc/mgpa/vendor/utils/c;

.field public static final synthetic d:[Lcom/ihoc/mgpa/vendor/utils/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ihoc/mgpa/vendor/utils/c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ihoc/mgpa/vendor/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihoc/mgpa/vendor/utils/c;->a:Lcom/ihoc/mgpa/vendor/utils/c;

    new-instance v1, Lcom/ihoc/mgpa/vendor/utils/c;

    const-string v3, "OIFACESERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ihoc/mgpa/vendor/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ihoc/mgpa/vendor/utils/c;->b:Lcom/ihoc/mgpa/vendor/utils/c;

    new-instance v3, Lcom/ihoc/mgpa/vendor/utils/c;

    const-string v5, "COSASERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ihoc/mgpa/vendor/utils/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ihoc/mgpa/vendor/utils/c;->c:Lcom/ihoc/mgpa/vendor/utils/c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ihoc/mgpa/vendor/utils/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ihoc/mgpa/vendor/utils/c;->d:[Lcom/ihoc/mgpa/vendor/utils/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihoc/mgpa/vendor/utils/c;
    .locals 1

    const-class v0, Lcom/ihoc/mgpa/vendor/utils/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihoc/mgpa/vendor/utils/c;

    return-object p0
.end method

.method public static values()[Lcom/ihoc/mgpa/vendor/utils/c;
    .locals 1

    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/c;->d:[Lcom/ihoc/mgpa/vendor/utils/c;

    invoke-virtual {v0}, [Lcom/ihoc/mgpa/vendor/utils/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihoc/mgpa/vendor/utils/c;

    return-object v0
.end method
