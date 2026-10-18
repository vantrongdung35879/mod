.class public final synthetic Lcom/ihoc/mgpa/vendor/utils/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/vendor/utils/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ihoc/mgpa/vendor/VendorKey;->values()[Lcom/ihoc/mgpa/vendor/VendorKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ihoc/mgpa/vendor/utils/c0$c;->a:[I

    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/vendor/VendorKey;->STRATEGY_SUPPORT:Lcom/ihoc/mgpa/vendor/VendorKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
