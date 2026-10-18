.class public interface abstract annotation Lcom/squareup/tmes/ProtoField;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/squareup/tmes/ProtoField;
        deprecated = false
        label = .enum Lcom/squareup/tmes/Message$Label;->OPTIONAL:Lcom/squareup/tmes/Message$Label;
        redacted = false
        type = .enum Lcom/squareup/tmes/Message$Datatype;->MESSAGE:Lcom/squareup/tmes/Message$Datatype;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract deprecated()Z
.end method

.method public abstract label()Lcom/squareup/tmes/Message$Label;
.end method

.method public abstract redacted()Z
.end method

.method public abstract tag()I
.end method

.method public abstract type()Lcom/squareup/tmes/Message$Datatype;
.end method
