.class public interface abstract annotation Lcom/beetalk/sdk/networking/ResponseCode;
.super Ljava/lang/Object;
.source "ResponseCode.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/ResponseCode$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/ResponseCode;",
        "",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->FUNCTION:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->PROPERTY:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lkotlin/annotation/AnnotationTarget;,
        .enum Lkotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/beetalk/sdk/networking/ResponseCode$Companion;

.field public static final ERROR_PARAM:I = 0x3ea

.field public static final ERROR_SERVER:I = 0x3e9

.field public static final NOT_FOUND:I = 0x3ed

.field public static final PERMISSION_DENIED:I = 0x3ec

.field public static final RESOURCE_EXHAUSTED:I = 0x3ee

.field public static final SUCCESS:I = 0x0

.field public static final UNAUTHENTICATED:I = 0x3eb

.field public static final UNKNOWN:I = -0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/ResponseCode$Companion;->$$INSTANCE:Lcom/beetalk/sdk/networking/ResponseCode$Companion;

    sput-object v0, Lcom/beetalk/sdk/networking/ResponseCode;->Companion:Lcom/beetalk/sdk/networking/ResponseCode$Companion;

    return-void
.end method
